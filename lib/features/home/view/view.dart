import 'package:com/features/auth/login/screen/login_screen.dart';
import 'package:com/features/main/view/view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Expanded(
            //flex: 1,
            // child:
            Image.asset(
              'assets/images/home.png',
            ),
            //   ),
            SizedBox(
              height: 7 + 7 + 7 + 7 + 7 + 7,
            ),
            Text(
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 7 + 7 + 7 + 7,
              ),
              ''' Stay connected with 
 your friends and family''',
            ),
            SizedBox(
              height: 7 + 7,
            ),
            Row(
              children: [
                SizedBox(
                  width: 7 + 7 + 7 + 7 + 7,
                ),
                Image.asset(
                  width: 7 + 7,
                  'assets/icons/security.png',
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Secure,privacy messaging',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 7 + 7 + 7 + 7 + 7,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: 7,
                  color: Colors.white,
                ),
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                FirebaseAuth.instance.idTokenChanges().listen((User? user) {
                  if (user == null) {
                    print('User is currently signed out!');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInPage(),
                      ),
                    );
                  } else {
                    print('User is signed in!');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPage(),
                      ),
                    );
                  }
                });
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
