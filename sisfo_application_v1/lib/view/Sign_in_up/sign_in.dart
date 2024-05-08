import 'package:flutter/material.dart';
// import 'package:sisfo_application_v1/view/HomePage/main_app.dart';
// import 'package:sisfo_application_v1/view/Sign_in_up/pop_in_up.dart';
// import 'package:sisfo_application_v1/view/Sign_in_up/sign_up.dart';
import 'package:sisfo_application_v1/view/widgets/button_login.dart';
import 'package:sisfo_application_v1/view/widgets/text_field.dart';
import 'package:sisfo_application_v1/view_model/userVM.dart';
import 'package:provider/provider.dart';
import '../../theme/constant.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                    'Sign In',
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
                            login_field(
                                // controller email
                                labelText: 'Email',
                                controller: context
                                    .read<UserViewModel>()
                                    .emailController),
                            login_field(
                              // controller password
                              labelText: 'Password',
                              controller: context
                                  .read<UserViewModel>()
                                  .passwordController,
                            ),
                            Text(
                              'Forgot password?',
                              style: AppTextStyle.InUptxt(),
                            ),
                            LoginButton(
                              onPressed: () {
                                //akan dilakukan validasi user ke database sebelum menampilkan pop up
                                // akan menampilkan pop_up.dart
                                context.read<UserViewModel>().login(context);
                                // showDialog(
                                //   context: context,
                                //   builder: (BuildContext context) {
                                //     return Consumer<UserViewModel>(
                                //       builder: (context, viewModel, child) {
                                //         return PopIn(
                                //           title: viewModel.message,
                                //           body:
                                //               'Once again you login successfully into sisfo ppmrj app',
                                //           label: 'Go to home',
                                //           onPressed: () {
                                //             Navigator.pushReplacement(
                                //               context,
                                //               MaterialPageRoute(
                                //                   builder: (context) =>
                                //                       const MainHomePage(userId: null, santriViewModel: null,)),
                                //             );
                                //           }, //navigasi ke home page
                                //         );
                                //       },
                                //     );
                                //   },
                                // );
                              },
                              label: 'Sign in',
                            ),
                            Row(
                              children: [
                                Text(
                                  "Don't have an account? ",
                                  style: AppTextStyle.InUptxt(),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.pushReplacement(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => const SignUp()),
                                    // );
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: AppTextStyle.InUptxt(
                                        color: AppTheme.primaryTheme2),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Image.asset('assets/images/credit.png'),
              Consumer<UserViewModel>(
                builder: (context, viewModel, child) {
                  return Text(viewModel.message);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
