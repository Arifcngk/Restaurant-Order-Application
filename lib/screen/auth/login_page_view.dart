import 'package:flutter/material.dart';
import 'package:looking_for_a_custom_app/const/color.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/btn_text_widget.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/icon_btn_widget.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/social_media_btn_widget.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/text_widget.dart';
import 'package:looking_for_a_custom_app/core/partials_widget/txt_formField_widget.dart';
import 'package:looking_for_a_custom_app/screen/auth/register_page_view.dart';

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
      body: Stack(
        children: [
          Column(
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
                                  withCard: double.infinity,
                                ),
                                SizedBox(height: 15),
                                SocialBtnWidget(
                                  text: 'Continue with Facebook',
                                  image: 'img/social_media_icon/facebook.png',
                                  withCard: double.infinity,
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
                flex: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'Login with email',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                            textAlign: TextAlign.center,
                          ),
                          Divider(
                            color: _colorApp.scaffoldBackgroungColor,
                            height: 9,
                            indent: 9,
                          ),
                          // Card for email and password fields
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    children: [
                                      txtFormFieldWidget(
                                        colorApp:
                                            _colorApp.scaffoldBackgroungColor,
                                        icon: Icons.email,
                                        text: 'Email',
                                      ),
                                      const SizedBox(height: 10),
                                      txtFormFieldWidget(
                                        colorApp:
                                            _colorApp.scaffoldBackgroungColor,
                                        icon: Icons.lock,
                                        text: 'Password',
                                        isNotPassword: true,
                                      ),
                                      const SizedBox(height: 10),
                                      btnTextWidget(
                                        color: _colorApp.btnColor,
                                        text: 'login',
                                      ),
                                      const SizedBox(height: 10),
                                      const Text('Forget Password ?'),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Don't have a account? "),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    RegisterPageView(),
                                              ));
                                            },
                                            child: Text('Sign up',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium!
                                                    .copyWith(
                                                        color: Colors.black)),
                                          ),
                                        ],
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
                  ),
                ),
              ),
            ],
          ),
          IconBtnWidget(
            colorApp: _colorApp,
          ),
        ],
      ),
    );
  }
}
