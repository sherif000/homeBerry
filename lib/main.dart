import 'package:flutter/material.dart';
import 'package:home_berry/home/controller/home_provider/provider.dart';
import 'package:home_berry/login/controller/login_provider/provider.dart';
import 'package:home_berry/login/view/login_screen.dart';
import 'package:home_berry/register/controller/pass_provider/provider.dart';
import 'package:home_berry/register/view/register_screen.dart';
import 'package:home_berry/splash_screen/splash.dart';
import 'package:provider/provider.dart';

import 'home/view/screen/home_screen.dart';
import 'message/message_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>Login_providerProvider()),
        ChangeNotifierProvider(create: (_)=>Pass_providerProvider()),
        ChangeNotifierProvider(create: (_)=>Home_providerProvider()),




      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
home: HomeScreen(),
      ),
    );
  }
}
