import 'package:flutter/material.dart';
import 'package:uzme/home_page/general_info.dart';
import 'package:uzme/sign_log_in_page/log_in_page.dart';

import 'donate.dart';
//import 'package:uzme/bottom_nav_bar/bottom_nav_bar.dart';
//import 'package:uzme/sign_log_in_page/log_in_page.dart';
//import 'package:uzme/sign_log_in_page/sign_in_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FCFC),

      body:Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(

                padding: const EdgeInsets.only( left: 10),
              child: IconButton(
                icon: const Icon(Icons.menu, size: 50,),
                tooltip: 'Show Snackbar',
                onPressed:  ( ) {

                },
              ),
              ),
              Padding(padding: const EdgeInsets.only(right: 55, left: 55, top: 80),
              child: Container(
              height: 150,
                width: 150,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(20),
                decoration:  const BoxDecoration(
                 // borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png',),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              ),
            ],
          ),
        const Padding(
          padding:EdgeInsets.only(right: 20) ,
         child: Text('Welcome, People',
           style: TextStyle(
           fontSize: 28,
           fontWeight: FontWeight.w500,
         ),),
    ),
          const Padding(
            padding:EdgeInsets.only(right: 0) ,
            child: Text('use me to complete',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
          ),
          const Text('your garbage goal',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),),

          const Padding(padding: EdgeInsets.only(right:285,top: 50),
          child:Text('Schedule',
          ),
          ),
          Card(
            elevation: 5,
            margin: const EdgeInsets.only(right: 19, left: 19),
            child: Container(
             // margin: EdgeInsets.only(right: 19, left: 19),
              height: 38,
              width: double.infinity,
              color: const Color(0xffD9D9D9),
              padding: const EdgeInsets.only(top:10),
              child: const Text('Today    oct 12',
              textAlign: TextAlign.center,
          ),),
          ),
          Card(
            elevation: 5,
            margin: const EdgeInsets.only(right: 19, left: 19, top: 10,
                bottom: 20),
            child: Container(
              // margin: EdgeInsets.only(right: 19, left: 19),
              height: 38,
              width: double.infinity,
              color: const Color(0xffD9D9D9),
              padding: const EdgeInsets.only(top:10),
              child: const Text('Tommorrow    oct 13  8.00 AM',
                textAlign: TextAlign.center,
              ),),
          ),
           ElevatedButton(
                onPressed: ( ) {
    Navigator.push(context, MaterialPageRoute(
    builder:(context)=> const Donates()));
    },
              child: const Text(' Donations',
                textAlign: TextAlign.center,),
              ),



          Container(
            padding: const EdgeInsets.only(top:100),
            child:  ElevatedButton(
              onPressed:  ( ) {
    Navigator.push(context, MaterialPageRoute(
    builder:(context)=> const GeneralInfo()));
    },

              child: const Text('Log In'),
              
            ),
          ),


          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Container(
                padding: const EdgeInsets.only(left: 90),
                child: const Text(' you do not have account?'),
              ),
              TextButton(onPressed: ( ) {
                Navigator.push(context, MaterialPageRoute(
                    builder:(context)=> const LogInPage()));
              },


                  child: const Text('sign up', style: TextStyle(
                      color: Colors.blue
                  ),))
            ],
          ),
        ],
      ),


    );
  }
}