import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uzme/donations/categories_screen.dart';
import 'package:uzme/donations/give.dart';

class Donates extends StatelessWidget {
  const Donates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      // appBar: AppBar(
      //   backgroundColor: Color(0xffF5F5F5),
      //   automaticallyImplyLeading: true,
      // ),
      body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 70),


              child: IconButton(onPressed: (){
                Navigator.pop(context);
              },
                  icon: const Icon(Icons.arrow_back),),
            ),

            Container(
                    padding: const EdgeInsets.only( left: 30,
                    bottom: 80),
                child: const Text('Donates',
        style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xff008080)
        ),),
    ),

    ElevatedButton(onPressed:( ) {
    Navigator.push(context, MaterialPageRoute(
    builder:(context)=>  GivePage()));
    },
    child: Container(
      margin: const EdgeInsets.all(20),
      color: const Color(0xffF29930),
    width: 415,
    height: 100,
    child: Row(
    children: [
    Container(
      height: 70,
      width:100 ,
      margin: EdgeInsets.only(top:10, bottom: 10, left: 10, right: 40),

    decoration: const BoxDecoration(
    image: DecorationImage(
         image: AssetImage('assets/images/give.png',),
    fit: BoxFit.fill,
    ),
    shape: BoxShape.circle,
    ),
    ),
      const Text('Give',
      textAlign: TextAlign.right,
      style: TextStyle(
        color: Color(0xffFFFFFF),
        fontSize: 45,
        fontWeight: FontWeight.w600
      ),)

    ],
    ),
    )
    ),

            ElevatedButton(onPressed:( ) {
    Navigator.push(context, MaterialPageRoute(
    builder:(context)=> const CategoriesScreen()));
    },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  color: const Color(0xffF29930),
                  width: 415,
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width:100 ,
                        //margin: EdgeInsets.only(top:10, bottom: 10, left: 10, right: 40),

                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/receive.png',),
                            fit: BoxFit.fill,

                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Text('Receive',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 45,
                            fontWeight: FontWeight.w600
                        ),)

                    ],
                  ),
                )
            ),

            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/donate.png',),
                  fit: BoxFit.fill,
                ),

              ),

            )



      ],
    ),


    );
  }
}