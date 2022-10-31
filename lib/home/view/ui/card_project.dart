import 'package:flutter/material.dart';
import 'package:home_berry/home/model/home_mod.dart';


class HomeCards2 extends StatelessWidget {
  late final Welcome home2;
  HomeCards2({required this.home2});

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
                  Text('${home2.data.projects.first.name}'),
                  Text('${home2.data.projects.first.id}'),
                ],
              ),
              Column(
                children: [
                  Text('${home2.data.projects.first.city}'),
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
