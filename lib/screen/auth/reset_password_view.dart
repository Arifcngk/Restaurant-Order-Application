import 'package:flutter/material.dart';
import 'package:looking_for_a_custom_app/const/color.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/btn_text_widget.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/icon_btn_widget.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/txt_formField_widget.dart';
import 'package:looking_for_a_custom_app/screen/auth/login_page_view.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorApp _colorApp = ColorApp();
    return Scaffold(
      backgroundColor: _colorApp.scaffoldBackgroungColor,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '  FORGOT RESET PASSWORD ?  ',
                    style: TextStyle(
                      color: _colorApp.colorEclipse,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Image.asset('img/auth_img/reset_password.png')),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 250,
                    child: Card(
                      color: Colors.white,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 16,
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Enter your register email below to receive password reset instruction',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                const SizedBox(height: 14),
                                txtFormFieldWidget(
                                    icon: Icons.mail_lock,
                                    text: 'Email',
                                    colorApp:
                                        _colorApp.scaffoldBackgroungColor),
                                const SizedBox(height: 8),
                                btnTextWidget(
                                    color: _colorApp.btnColor,
                                    text: 'Send Reset Link')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Remember password? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginPageView(),
                        ));
                      },
                      child: Text('Login',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          IconBtnWidget(colorApp: _colorApp),
        ],
      ),
    );
  }
}
