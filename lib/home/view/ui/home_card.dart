import 'package:flutter/material.dart';
import 'package:home_berry/home/model/home_mod.dart';


class HomeCards1 extends StatelessWidget {
  late final Welcome home1;
  HomeCards1({required this.home1});

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
                  Text('${home1.data.cities.first.name}'),
                  Text('${home1.data.cities.first.id}'),
                ],
              ),
              Column(
                children: [
                  Text('${home1.data.cities.first.governorate}'),
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
