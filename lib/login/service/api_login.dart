import 'dart:convert';

import 'package:home_berry/core/base_url.dart';
import 'package:http/http.dart'as http;

class RemoteService{

  static Future login(String email , String pass) async {
    String url = '$baseUrl/login';
    http.Response response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; char=UTF-8',
      },
      body: jsonEncode(
        {
          'email': email,
          'password': pass,
        },
      ),
    );

    var body = jsonDecode(response.body);
    var  statusLogin = await body["status"].toString();
    print(statusLogin);
    var  messagelogin = await body["message"];
    print(messagelogin);

    if (response.statusCode == 200) {
      print('Success =200 ********');
      //  print(body);

      if (statusLogin == '1') {
        print(body["data"]);
        var  access_token = body["data"]["access_token"];


        print('Success Login ********');
      }
    } else {
      print('failed == 400 ******');
    }
    return body;
  }


}