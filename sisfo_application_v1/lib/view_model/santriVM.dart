import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sisfo_application_v1/model/santri.dart';
import 'package:sisfo_application_v1/model/user.dart';
import 'package:sisfo_application_v1/view_model/private.dart';

class SantriViewModel extends ChangeNotifier {
  String message = '';
  User? user;
  Santri? santri;

  Future<void> fetchSantri(idUser) async {
    try {
      final response = await http
          .get(Uri.parse('$baseurl/statusSantri.php?id_user=$idUser'));

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final status = jsonData['status'];

        if (status == 'success') {
          final data = jsonData['data'];
          if (data.containsKey('user')) {
            user = User.fromJson(data['user']);
          }
          if (data.containsKey('santri')) {
            santri = Santri.fromJson(data['santri']);
          }
        } else {
          throw Exception('Failed to load santri data: ${jsonData['message']}');
        }
      } else {
        throw Exception(
            'Failed to load santri data. Server returned status code: ${response.statusCode}');
      }
    } catch (e) {
      message = 'Error: $e';
    }
    notifyListeners();
  }

  // bool get isSantri => santri != null;
}
