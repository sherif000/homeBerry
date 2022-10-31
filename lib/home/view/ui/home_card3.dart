import 'package:flutter/material.dart';
import 'package:home_berry/home/model/home_mod.dart';


class HomeCards3 extends StatelessWidget {
  late final Welcome home3;
  HomeCards3({required this.home3});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('images/download.jpg'
            , height: 150,
            width: 150,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text('${home3.data.properties.first.name}'),
                  Text('${home3.data.properties.first.id}'),
                ],
              ),
              Column(
                children: [
                  Text('${home3.data.properties.first.city}'),
                ],
              ),
            ],
          ),

          TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.black),

              onPressed: (){}, child: Text('Know More',style: TextStyle(
              color: Colors.amber,fontSize: 15
          ),))
        ],


      ),
    );
  }
}
