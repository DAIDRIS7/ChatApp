import 'package:com/features/all_chats/screens/all_chats.dart';
import 'package:com/features/auth/registration/screen/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  final emailAddress = TextEditingController();
  final passwod = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(7 + 7),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Welcome back',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // fontSize: 7 + 7,
              ),
            ),
            SizedBox(
              height: 7 + 7,
            ),
            Text(
              'DAIDRIS7 ',
            ),
            TextFormField(
              controller: emailAddress,
              decoration: InputDecoration(hintText: 'Enter your Email'),
            ),
            SizedBox(
              height: 7 + 7,
            ),
            TextFormField(
              controller: passwod,
              decoration: InputDecoration(hintText: 'Enter your Password'),
            ),
            SizedBox(
              height: 7 + 7,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forget Password',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 7 + 7,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              onPressed: () {
                _logIn(context);
              },
              child: Text(
                'Sign in',
              ),
            ),
            SizedBox(
              height: 7 + 7,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                );
              },
              child: Text(
                style: TextStyle(
                  color: Colors.black,
                ),
                'Create Account',
              ),
            )
          ]),
        ),
      ),
    );
  }

  _logIn(BuildContext context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress.text, password: passwod.text);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AllChats(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        if (kDebugMode) {
          print('No user found for that email.');
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Email is not exist'),
          ),
        );
      } else if (e.code == 'wrong-password') {
        if (kDebugMode) {
          print('Wrong password provided for that user.');
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('wrong-password'),
          ),
        );
      }
    }
  }
}
