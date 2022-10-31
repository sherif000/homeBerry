import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:home_berry/home/controller/home_provider/provider.dart';
import 'package:home_berry/home/view/ui/card_project.dart';
import 'package:home_berry/home/view/ui/home_card.dart';
import 'package:provider/provider.dart';

import '../ui/home_card3.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future _future;
  Future<void> prepareData() async {
    var home_provider = Provider.of<Home_providerProvider>(context, listen: false);
    await home_provider.getHome();
  }

  void initState() {
    _future=prepareData();
    super.initState();
  }
  bool buy=true,
  rent=false,
  project=false;
  @override
  Widget build(BuildContext context) {
    return Consumer<Home_providerProvider>(
  builder: (context, homeProvider, child) {
  return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Image.asset('images/Desktop Screenshot 2022.02.12 - 12.35.37.02.png',height: 50,width: 50,),
          SizedBox( height: (20/375.0)*MediaQuery.of(context).size.height,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    InkWell(
      onTap: (){
        setState(() {
          buy=true;
          rent=false;
          project=false;

        });
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: buy?Colors.orangeAccent:Colors.white,
        ),
child: Column(
  children: [
      Icon(Icons.home,size: 35,),
      AutoSizeText('Buy',style: TextStyle(fontSize: 25),),
  ],


) ,   ),
    ),
    InkWell(
      onTap: (){
       setState(() {
         rent=true;
         buy=false;
         project=false;
       });
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: rent?Colors.orangeAccent:Colors.white,

        ),
        child: Column(
          children: [
            Icon(Icons.vpn_key_outlined,size: 35,),
            AutoSizeText('rent',style: TextStyle(fontSize: 25),),
          ],


        ) ,   ),
    ),
    InkWell(
      onTap: (){
       setState(() {
         project=true;
         buy=false;
         rent=false;
       });
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: project?Colors.orangeAccent:Colors.white,

        ),
        child: Column(
          children: [
            Icon(Icons.home_work_outlined,size: 35,),
            AutoSizeText('project',style: TextStyle(fontSize: 25),),
          ],


        ) ,   ),
    ),
  ],
),
          SizedBox( height: (20/375.0)*MediaQuery.of(context).size.height,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('featured projects',style: TextStyle(color: Colors.red,fontSize: 30),),
              Text('show all',style: TextStyle(color: Colors.orangeAccent,fontSize: 25),),
              ],
            ),
          ),
          (homeProvider.homeList.isEmpty)?Center(child: CircularProgressIndicator(),):
          ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: homeProvider.homeList.length,
              itemBuilder: (BuildContext context, int index) {
                return HomeCards1(home1: homeProvider.homeList[index]);
              }),
          SizedBox( height: (10/375.0)*MediaQuery.of(context).size.height,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('featured projects',style: TextStyle(color: Colors.red,fontSize: 30),),
                Text('show all',style: TextStyle(color: Colors.orangeAccent,fontSize: 25),),
              ],
            ),
          ),
          (homeProvider.homeList.isEmpty)?Center(child: CircularProgressIndicator(),):
          ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeProvider.homeList.length,
              itemBuilder: (BuildContext context, int index) {
                return HomeCards2(home2: homeProvider.homeList[index]);
              }),
          SizedBox( height: (10/375.0)*MediaQuery.of(context).size.height,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('featured projects',style: TextStyle(color: Colors.red,fontSize: 30),),
                Text('show all',style: TextStyle(color: Colors.orangeAccent,fontSize: 25),),
              ],
            ),
          ),
          (homeProvider.homeList.isEmpty)?Center(child: CircularProgressIndicator(),):
          ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeProvider.homeList.length,
              itemBuilder: (BuildContext context, int index) {
                return HomeCards3(home3: homeProvider.homeList[index]);
              }),
        ],
      ),

    ));
  },
);
  }
}
