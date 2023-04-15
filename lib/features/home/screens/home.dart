import 'package:com/features/all_chats/screens/all_chats.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllChats(),
                  ),
                );
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
