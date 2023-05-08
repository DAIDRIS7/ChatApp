import 'package:com/features/auth/login/screen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final emailAddress = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(7 + 7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Create An Account',
                style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold,
                  // fontSize: 7 + 7,
                ),
              ),
              SizedBox(
                height: 7 + 7 + 7 + 7,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 7 + 7,
              ),
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'Enter your Name',
                    hintStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 7 + 7,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter your Password',
                ),
              ),
              SizedBox(
                height: 7 + 7,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                ),
                onPressed: _createAccount(context),
                child: Text(
                  'Sign Up',
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInPage(),
                      ));
                },
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _createAccount(context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress.text,
        password: password.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        if (kDebugMode) {
          print('The password provided is too weak.');
        }
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Password provided is too weak')));
      } else if (e.code == 'email-already-in-use') {
        if (kDebugMode) {
          print('The account already exists for that email.');
        }
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('The email already exists ')));
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('@e reg')));
    }
  }
}
