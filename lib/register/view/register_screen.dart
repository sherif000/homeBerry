import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:home_berry/login/view/login_screen.dart';
import 'package:home_berry/register/controller/pass_provider/provider.dart';
import 'package:provider/provider.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey=GlobalKey<FormState>();
  TextEditingController _nameController =TextEditingController();
  TextEditingController _emailController =TextEditingController();
  TextEditingController _passController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<Pass_providerProvider>(
  builder: (context, provider, child) {
  return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text('Register',style: TextStyle(
          color: Colors.white,fontSize: 30
        ),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) ),
        ),
        child: ListView(
          children: [
            SizedBox( height: (20/375.0)*MediaQuery.of(context).size.height,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                    ),
                    fillColor: Colors.white,
                    filled: true
                ),
                validator: (val){
                  if(val!.isEmpty){
                    return 'Enter your Name';
                  }
                  return null;
                },
              ),
            ),
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
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                controller: _passController,
                decoration: InputDecoration(
                  hintText: 'enter your password',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon:provider.text?Icon(Icons.visibility_rounded):Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
                obscureText: provider.text,
                onTap: (){
                  provider.pass();
                },
                validator: (val){
                  if(val!.isEmpty){
                    return 'Enter your password';
                  }
                  return null;
                },
              ),
            ),
            SizedBox( height: (20/375.0)*MediaQuery.of(context).size.height,),
Center(
  child:   Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 40,

      decoration: BoxDecoration(
        color: Colors.grey
      ),

      child: Row(
mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Icon(Icons.phone,color: Colors.black45,),

          Text('  '),

          Text('or connect with phone number',style: TextStyle(color: Colors.black45,fontSize: 15),),

        ],

      ),

    ),
  ),
),
            SizedBox( height: (10/375.0)*MediaQuery.of(context).size.height,),
            Center(
              child: Column(
                children: [
                  Text('By signing up you are agree for our',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
               Text('terms and condition',style: TextStyle(color: Colors.orangeAccent,fontSize: 20),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.orangeAccent),
                  onPressed: (){
                    if (formKey.currentState!.validate()) {
                      provider.register(_emailController.text,_passController.text,_nameController.text);
                    }
                  }, child:AutoSizeText(
                'SIGN UP',style: TextStyle(fontSize: 25,color: Colors.white),)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account ?',style: TextStyle(color: Colors.black,fontSize: 15),),
                TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                }, child: AutoSizeText('Log in',style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold),)),
              ],
            ),



          ],
        ),
      ),
    );
  },
);
  }
}
