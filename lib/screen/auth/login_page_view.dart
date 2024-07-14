import 'package:flutter/material.dart';
import 'package:looking_for_a_custom_app/const/color.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/social_media_btn_widget.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    final ColorApp _colorApp = ColorApp();
    return Scaffold(
      backgroundColor: _colorApp.scaffoldBackgroungColor,
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/auth_img/login.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 200),
                      textWidget(
                        text: 'WELCOME TO\nMONUMENTAL HABITS',
                        color: _colorApp.colorEclipse,
                        fontSize: 30,
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            SocialBtnWidget(
                              text: 'Continue with Google',
                              image: 'img/social_media_icon/google.png',
                            ),
                            SizedBox(height: 15),
                            SocialBtnWidget(
                              text: 'Continue with Facebook',
                              image: 'img/social_media_icon/facebook.png',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Login in with email',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      Divider(
                        color: _colorApp.scaffoldBackgroungColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class textWidget extends StatelessWidget {
  const textWidget({
    super.key,
    required this.text,
    this.fontSize = 20,
    required this.color,
  });
  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
          fontSize: fontSize, color: color, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
