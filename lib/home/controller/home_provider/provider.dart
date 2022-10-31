import 'package:flutter/material.dart';
import 'package:home_berry/home/model/home_mod.dart';
import 'package:home_berry/home/service/home_api.dart';

class Home_providerProvider extends ChangeNotifier {
  List <Welcome> homeList=[];
Future getHome () async{

  try{
    homeList=await RemoteService.getHome1();
  }
  catch(e){
    print(e);
  }
  notifyListeners();
}


}
