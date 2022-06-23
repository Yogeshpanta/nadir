import 'package:flutter/material.dart';
import 'package:uzme/home_page/donate.dart';
class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   automaticallyImplyLeading: true,
      //   title: const Text('Home Page'),
      // ),
      body: SingleChildScrollView(
        child: Container(

          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
              child: ElevatedButton(onPressed: null,
                  child: Text('Waste Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w500
                  ),))
              ),
              Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(onPressed: null,
                      child: Text('Donates',
                        style: TextStyle(
                            fontWeight: FontWeight.w500
                        ),))
              ),
              Container(
                height: 30,
                  width: 60,
                  alignment: Alignment.center,
                  child: ElevatedButton(onPressed: null,
                      child: Text('Log In',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                          fontSize: 30
                        ),))
              ),
              Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(onPressed: null,
                      child: Text('Sign Out',
                        style: TextStyle(
                            fontWeight: FontWeight.w500
                        ),))
              )
       ],
    ),
    ),
      ),

    );
  }
}