import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/view/Sign_in_up/pop_in_up.dart';
import 'package:sisfo_application_v1/view/Sign_in_up/sign_in.dart';
import '../../theme/constant.dart';
import '../widgets/button_login.dart';
import '../widgets/text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 92,
            bottom: 34,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/logo_login.png'),
                  const SizedBox(
                    height: 31,
                  ),
                  Text(
                    'Sign Up',
                    style: AppTextStyle.MainHeaderTxt(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 44,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 48),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const login_field(
                                // controller email
                                labelText: 'Email'),
                            const login_field(
                                // controller nomerHp
                                labelText: 'No Hp'),
                            const login_field(
                                // controller username
                                labelText: 'Nama Lengkap'),
                            const login_field(
                                // controller pass1
                                labelText: 'Password'),
                            const login_field(
                                // controller pass2
                                labelText: 'Password'),
                            Row(
                              children: [
                                Text(
                                  "Have an account? ",
                                  style: AppTextStyle.InUptxt(),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const SignIn()),
                                    );
                                  },
                                  child: Text(
                                    "Sign In",
                                    style: AppTextStyle.InUptxt(
                                        color: AppTheme.primaryTheme1),
                                  ),
                                ),
                              ],
                            ),
                            LoginButton(
                              onPressed: () {
                                //menginputkan data user kedalam database
                                //jika berhasil melakukan input,
                                // akan menampilkan pop_up.dart
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return PopIn(
                                      title: 'Success',
                                      body:
                                          'Your account has been successfully registered',
                                      label: 'Go to login',
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignIn()), // navigasi ke login page
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                              label: 'Sign Up',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset('assets/images/credit.png'),
            ],
          ),
        ),
      ),
    );
  }
}
