import 'package:flutter/material.dart';
import 'package:home_berry/login/service/api_login.dart';

class Login_providerProvider extends ChangeNotifier {
Future  login(String email,String pass) async {
  try{
    await RemoteService.login( email, pass);
  }
  catch(e){
    print(e);
  }

  notifyListeners();
}
}
