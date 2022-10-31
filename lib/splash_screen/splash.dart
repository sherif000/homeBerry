import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:home_berry/login/view/login_screen.dart';
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(

      splash:Column(
        children: [
          Center(
            child: Image.asset('images/Desktop Screenshot 2022.02.12 - 12.35.37.02.png'),
          ),

        ],

      ),
      backgroundColor:Colors.orange ,

      nextScreen:LoginScreen() ,
      splashIconSize: 250,
    );;
  }
}
