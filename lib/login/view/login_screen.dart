import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:home_berry/login/controller/login_provider/provider.dart';
import 'package:home_berry/register/view/register_screen.dart';
import 'package:provider/provider.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey=GlobalKey<FormState>();
TextEditingController _emailController =TextEditingController();
  TextEditingController _passController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Consumer<Login_providerProvider>(
  builder: (context, provider, child) {
  return Form(
        key: formKey,
        child: ListView(
          children: [
            SizedBox( height: (20/375.0)*MediaQuery.of(context).size.height,),
            Center(child: Container(
                child: Image.asset('images/Desktop Screenshot 2022.02.12 - 12.35.37.02.png'))),
            SizedBox( height: (30/375.0)*MediaQuery.of(context).size.height,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                 hintText: 'enter your email',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.email),
                 border: OutlineInputBorder(
                 ),
                  fillColor: Colors.white,
                  filled: true
                ),
                validator: (val){
                  if(val!.isEmpty){
                    return 'Enter your email';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
              child: TextFormField(
                controller: _passController,
                decoration: InputDecoration(
                    hintText: 'enter your password',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                    ),
                    fillColor: Colors.white,
                    filled: true,
                ),
obscureText: true,
                validator: (val){
                  if(val!.isEmpty){
                    return 'Enter your password';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                'FORGET YOUR PASSWORD ?',textAlign: TextAlign.end,style: TextStyle(
                color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox( height: (30/375.0)*MediaQuery.of(context).size.height,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 30),
  child:   TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.white,),

        onPressed: (){

          if (formKey.currentState!.validate()) {
            provider.login(_emailController.toString(), _passController.toString());
          }



        }, child: AutoSizeText(

    'LOG IN',style: TextStyle(color: Colors.black,fontSize: 20),

  )),
),
            SizedBox( height: (10/375.0)*MediaQuery.of(context).size.height,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child:   TextButton(style: TextButton.styleFrom(backgroundColor: Colors.white),

        onPressed: (){}, child: Row(

          mainAxisAlignment: MainAxisAlignment.center,




          children: [



        AutoSizeText('G',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
            AutoSizeText('     '),
            AutoSizeText('login with google',style: TextStyle(fontSize: 15,color: Colors.black),),

    ],

  )),
),
            SizedBox( height: (5/375.0)*MediaQuery.of(context).size.height,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account ?',style: TextStyle(color: Colors.white,fontSize: 15),),
                TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>RegisterScreen()));
                }, child: AutoSizeText('SIGN UP',style: TextStyle(color: Colors.white,fontSize:25),)),
              ],
            ),

            SizedBox( height: (5/375.0)*MediaQuery.of(context).size.height,),
Center(child: Text('skip',style: TextStyle(color: Colors.white,fontSize: 15),)),






          ],
        ),
      );
  },
),

    ));
  }
}
