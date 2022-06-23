import 'package:flutter/material.dart';

class RequestForGarbage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Request Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [const
          Padding(padding:EdgeInsets.only(top: 40,left: 40,
          right: 40) ,
          child: Text('What type of waste do you have?',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25),),),


          Padding(
            padding:  const EdgeInsets.only(top:100),
            child: ElevatedButton(
              //tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content:
                    Text('Thank you, you will be notified soon..')));
              },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text('Organic',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 30)),
                ),

            ),
          ),

          Padding(
            padding:  const EdgeInsets.only(top:10),
            child: ElevatedButton(
              //tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content:
                    Text('Thank you, you will be notified soon..')));
              },
              child: Container(
                height: 50,
                alignment: Alignment.center,
                child: const Text('Reusable',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 30)),
              ),

            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:10),
            child: ElevatedButton(
              //tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content:
                    Text('Thank you, you will be notified soon..')));
              },
              child: Container(
                //color: Color(0xff008080),
                height: 50,
                alignment: Alignment.center,
                child: const Text('Recycleable',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 30)),
              ),

            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:10),
            child: ElevatedButton(
              //tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content:
                    Text('Thank you, you will be notified soon..')));
              },
              child: Container(
                height: 50,
                alignment: Alignment.center,
                child: const Text('Others',

                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 30)),
              ),

            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: TextButton(onPressed: null,
                child: Text('Info about waste', style:
                  TextStyle(color: Colors.green, fontSize: 15, fontWeight:
                  FontWeight.bold),)),
          )

        ],
      ),
    );
  }
}