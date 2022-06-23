import 'package:flutter/material.dart';
import 'package:uzme/home_page/general_info.dart';

//import 'package:hackethon/general_info.dart';



class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  //const SignUpPage({Key? key}) : super(key: key);
  //  late String InputUsername;
  // late  String InputEmail;
  //  late String InputPassword;
  final UsernameController = TextEditingController();
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100, left: 30),
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            // NAVIGATION BAR

            const Padding(
              padding: EdgeInsets.only(left: 30, top: 30, bottom: 20),
              child: Text('Now lets get to know more about you'),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 70),
              // decoration: BoxDecoration(),
              child: TextField(
                controller: UsernameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    helperText: 'username',
                    labelText: 'Username',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 70),
              child: TextField(
                controller: EmailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    helperText: 'Email',
                    labelText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 70),
              child: TextField(
                controller: PasswordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    helperText: 'Password',
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      const BorderSide(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),

            Container(
              //color: Colors.blue,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 100, right: 50, top: 20),
              child:
              ElevatedButton(onPressed: ( ) {
                Navigator.push(context, MaterialPageRoute(
                    builder:(context)=> const GeneralInfo()));
              },



                  child: const Text('Sign In')),
            ),
          ],
        ),
      ),
    );
  }
}
