import 'dart:convert';

import 'package:home_berry/core/base_url.dart';
import 'package:http/http.dart'as http;

class RemoteService{
  static Future register(String name, String email, String pass,) async {
    String url = 'https://$baseUrl/register';
    http.Response response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; char=UTF-8',
      },
      body: jsonEncode(
        {
          'name': name,
          'email': email,
          'password': pass,
        },
      ),
    );

    var body = jsonDecode(response.body);
    var status_reg = await body["status"].toString();
    print(status_reg);
    var  message_reg = await body["message"];
    print(message_reg);

    if (response.statusCode == 200) {
      print('Success =200 ********');
      print(body);
      if (status_reg == '1') {
        String url = 'https://berry.parfaih.com/api/v1/resend/1/';
        http.Response response2 = await http.post(
          Uri.parse(url),
          headers: <String, String>{
            'Content-Type': 'application/json; char=UTF-8',
          },
        );
        var body2 = jsonDecode(response.body);
        print(body2["status"]);
        print(body2["message"]);

        if (body2["status"] == 1) {
          print('Success Auth ********');
        } else {
          print('Failed Auth ********');
        }
      }
      ;
    } else {
      print('failed == 400 ******');
    }
    return body;
  }


}