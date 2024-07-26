import 'package:flutter/material.dart';
import 'package:looking_for_a_custom_app/const/color.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/btn_text_widget.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/social_media_btn_widget.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/text_widget.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/txt_formField_widget.dart';
import 'package:looking_for_a_custom_app/screen/auth/login_page_view.dart';

class RegisterPageView extends StatefulWidget {
  const RegisterPageView({super.key});

  @override
  State<RegisterPageView> createState() => _RegisterPageViewState();
}

class _RegisterPageViewState extends State<RegisterPageView> {
  @override
  Widget build(BuildContext context) {
    final ColorApp _colorApp = ColorApp();
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: _colorApp.scaffoldBackgroungColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: screenWidth * 0.01),
              Column(
                children: [
                  SizedBox(
                    width: screenWidth * 0.8, // Responsive width
                    height: screenWidth * 0.5, // Responsive height
                    child: Image.asset('img/auth_img/register.png'),
                  ),
                  const SizedBox(height: 14),
                  textWidget(
                    color: _colorApp.colorEclipse,
                    text: 'Create Your Account',
                    fontSize: 24,
                  ),
                  const SizedBox(height: 14),
                  const txtFormFieldWidget(
                    colorApp: Colors.white,
                    icon: Icons.person_outline_sharp,
                    text: 'Name',
                  ),
                  const SizedBox(height: 14),
                  const txtFormFieldWidget(
                    colorApp: Colors.white,
                    icon: Icons.email_outlined,
                    text: 'Email',
                  ),
                  const SizedBox(height: 14),
                  const txtFormFieldWidget(
                    colorApp: Colors.white,
                    icon: Icons.lock_outlined,
                    text: 'Password',
                    isNotPassword: true,
                  ),
                  const SizedBox(height: 14),
                  btnTextWidget(
                    color: _colorApp.btnColor,
                    text: 'Create Account',
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.black.withOpacity(0.4),
                          endIndent: 8,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or sign in with',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.4)),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.black.withOpacity(0.4),
                          indent: 8,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Expanded(
                        child: SocialBtnWidget(
                          text: 'Google',
                          image: 'img/social_media_icon/google.png',
                          withCard: double.infinity,
                        ),
                      ),
                      SizedBox(width: 6),
                      Expanded(
                        child: SocialBtnWidget(
                          text: 'Facebook',
                          image: 'img/social_media_icon/facebook.png',
                          withCard: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 20.0), // Adjusted padding for bottom alignment
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginPageView(),
                        ));
                      },
                      child: Text('Sign up',
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
        ),
      ),
    );
  }
}
