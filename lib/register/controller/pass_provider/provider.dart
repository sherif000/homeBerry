import 'package:flutter/material.dart';

import '../../service/api_register.dart';

class Pass_providerProvider extends ChangeNotifier {
bool text=true;
pass(){
  text=!text;
  notifyListeners();
}
Future register(String name,String email,String pass1) async{
  try{
     await RemoteService.register(name,email,pass1 );

  }
  catch(e){
    print(e);
  }
  notifyListeners();
}

}
