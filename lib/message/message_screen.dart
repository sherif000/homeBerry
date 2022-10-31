import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(''
            'verify phone number',style: TextStyle(
            color: Colors.white,fontSize: 20,
        ),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight:Radius.circular(40) ),
        ),
        child: ListView(
         children: [            SizedBox( height: (20/375.0)*MediaQuery.of(context).size.height,),

         Center(
           child: Text('Enter your confirmation code',style: TextStyle(
             color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,
           ),),
         ),
           SizedBox( height: (10/375.0)*MediaQuery.of(context).size.height,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 height: 70,
                 width: 70,
                 child: TextFormField(
                   maxLines: 1,
                   maxLength: 1,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),

                   ),
                   keyboardType: TextInputType.phone,
                 ),
               ),
               Container(
                 height: 70,
                 width: 70,
                 child: TextFormField(
                   maxLines: 1,
                   maxLength: 1,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),

                   ),
                   keyboardType: TextInputType.phone,
                 ),
               ),
               Container(
                 height: 70,
                 width: 70,
                 child: TextFormField(
                   maxLines: 1,
                   maxLength: 1,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),

                   ),
                   keyboardType: TextInputType.phone,
                 ),
               ),
               Container(
                 height: 70,
                 width: 70,
                 child: TextFormField(
                   maxLines: 1,
                   maxLength: 1,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),

                   ),
                   keyboardType: TextInputType.phone,
                 ),
               ),
               Container(
                 height: 70,
                 width: 70,
                 child: TextFormField(
                   maxLines: 1,
                   maxLength: 1,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(),

                   ),
                   keyboardType: TextInputType.phone,
                 ),
               ),




             ],
           ),
           SizedBox(height: 20,),
           Center(child: Column(
             children: [
               Text('Type the code which we sent  ',style: TextStyle(
                   fontWeight: FontWeight.bold,fontSize: 20

               ),),
               Text('to you in messages',style: TextStyle(
                   fontWeight: FontWeight.bold,fontSize: 20
               ),),
             ],
           )),
           SizedBox( height: (30/375.0)*MediaQuery.of(context).size.height,),

           Center(child: Column(
             children: [
               Text('By signing up you are agree for our  ',style: TextStyle(
                   fontSize: 20

               ),),
               Text('Terms and conditions',style: TextStyle(
                   fontWeight: FontWeight.bold,fontSize: 15,color: Colors.orangeAccent
               ),),
             ],
           )),
           SizedBox( height: (20/375.0)*MediaQuery.of(context).size.height,),

           Padding(
             padding: const EdgeInsets.all(20.0),
             child: TextButton(
               style: TextButton.styleFrom(backgroundColor: Colors.orangeAccent),

               onPressed: (){}, child: AutoSizeText('Submit',style: TextStyle(
                 color: Colors.white,fontSize: 25
             ),),),
           ),
           SizedBox( height: (20/375.0)*MediaQuery.of(context).size.height,),

           Center(
             child: Text('Resend code',style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 15,
                 color: Colors.black


             ),),
           ),
         ],
        ),
      ),
    );
  }
}
