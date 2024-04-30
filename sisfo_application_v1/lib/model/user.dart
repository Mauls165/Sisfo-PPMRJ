class User {
  int? id;
  String? fullname;
  String? email;
  String? nohp;
  String? gender;
  DateTime? birthdate;
  String? profileImgUrl;
  String? remember_token;

  User(
      {this.id,
      this.fullname,
      this.email,
      this.nohp,
      this.gender,
      this.birthdate,
      this.profileImgUrl,
      this.remember_token});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'] is String ? int.tryParse(json['id']) : json['id'];
    fullname = json['fullname'];
    email = json['email'];
    nohp = json['nohp'];
    gender = json['gender'];
    birthdate =
        json['birthdate'] != null ? DateTime.parse(json['birthdate']) : null;
    profileImgUrl = json['profileImgUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (id != null) data['id'] = id;
    if (fullname != null) data['fullname'] = fullname;
    if (email != null) data['email'] = email;
    if (nohp != null) data['nohp'] = nohp;
    if (gender != null) data['gender'] = gender;
    if (birthdate != null) data['birthdate'] = birthdate!.toIso8601String();
    if (profileImgUrl != null) data['profileImgUrl'] = profileImgUrl;
    if (remember_token != null) data['remember_token'] = remember_token;
    return data;
  }
}
