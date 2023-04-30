import 'package:com/features/all_chats/screens/all_chats.dart';
import 'package:com/features/auth/registration/screen/sign_up.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
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
              decoration: InputDecoration(hintText: 'Enter your Email'),
            ),
            SizedBox(
              height: 7 + 7,
            ),
            TextFormField(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllChats(),
                  ),
                );
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
}
