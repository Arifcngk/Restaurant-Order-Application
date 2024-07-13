import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:looking_for_a_custom_app/const/color.dart';
import 'package:looking_for_a_custom_app/screen/auth/login_page_view.dart';
import 'package:looking_for_a_custom_app/screen/home/home_page_view.dart';
import 'package:looking_for_a_custom_app/screen/introduction/splash.dart';

class OnBoardingIntroView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        controllerColor: ColorApp().colorEclipse,
        pageBackgroundColor: Colors.white,
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Get Started',
        finishButtonTextStyle: TextStyle(
            color: ColorApp().btnColorTxt,
            fontSize: 16,
            fontWeight: FontWeight.bold),
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: ColorApp().btnColor,
        ),
        centerBackground: true,
        onFinish: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPageView(),
              ));
        },
        background: [
          SizedBox(child: Image.asset('img/intro_img/intro1.png')),
          SizedBox(child: Image.asset('img/intro_img/intro2.png')),
          SizedBox(child: Image.asset('img/intro_img/intro3.png')),
          SizedBox(child: Image.asset('img/intro_img/intro4.png')),
        ],
        totalPage: 4,
        speed: 1.3,
        pageBodies: [
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
