import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:sisfo_application_v1/view/HomePage/main_app.dart';
import 'package:sisfo_application_v1/view/Sign_in_up/pop_in_up.dart';
import 'package:sisfo_application_v1/view_model/private.dart';
// import 'package:sisfo_application_v1/view_model/santriVM.dart';

class UserViewModel extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String message = '';

  Future<void> login(BuildContext context) async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    final response = await http.post(
      Uri.parse('$baseurl/login.php'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      if (data['success']) {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => MainHomePage(
        //         userId: int.parse(data['user']['id']),
        //         santriViewModel: SantriViewModel()),
        //   ),
        // );
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Consumer<UserViewModel>(
              builder: (context, viewModel, child) {
                return PopIn(
                  title: viewModel.message,
                  body:
                      'Once again you login successfully into sisfo ppmrj app',
                  label: 'Go to home',
                  onPressed: () {
                    int UserId = int.parse(data['user']['id']);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHomePage(userId: UserId)),
                    );
                  }, //navigasi ke home page
                );
              },
            );
          },
        );
        message = 'Yeay! Welcome Back';
      } else {
        message = data['message'];
      }
    } else {
      message = 'Failed to connect to server';
    }
    notifyListeners();
  }
}
