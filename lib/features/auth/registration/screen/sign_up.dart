import 'package:com/features/auth/login/screen/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInPage(),
                    ),
                  );
                },
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
}
