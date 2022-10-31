import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:home_berry/core/base_url.dart';
import 'package:http/http.dart'as http;

import '../model/home_mod.dart';
import '../view/ui/home_card.dart';
class RemoteService{

  static Future getHome1() async {
    String url = '$baseUrl/home';
    http.Response response = await http.get(Uri.parse(url));
    var body = response.body;
    print(body);
    if(response.statusCode==200)
      {

        return welcomeFromJson(body);
      }else{
      print('error');
    }


    }
  }
