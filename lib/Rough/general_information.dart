import 'package:flutter/material.dart';
import 'package:uzme/bottom_nav_bar/bottom_nav_bar.dart';
//import 'package:nadir/network/notification.dart';
//import 'package:nadir/rough/notify.dart';


class GeneralInfo extends StatelessWidget {
  const GeneralInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // automaticallyImplyLeading: true,
        title: const Text('General Info'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {

              //PushNotification(title: "push notification",);
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Notification on')));
            },
          ),



        ],
      ),
      drawer: Drawer(
        // width: 200,
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
              child:Container(
                alignment: Alignment.center,
                child: const Text('menu',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
              ),
            ),
            ListTile(
              title: const Text('Profile',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.w700
                ),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Rewards',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.w700
                ),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Chart',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.w700
                  )),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Settings',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.w700
                ),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Help',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.w700
                  )),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: const BottomNavBar(),
    );
  }
}
