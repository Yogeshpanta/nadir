import 'package:flutter/material.dart';

class MyMap extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('location'),
      ),
      body: Container(
        width:double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:  AssetImage('assets/images/maposm.jpg',),
            fit: BoxFit.fill,
          )
        ),
      ),
    );
  }
}