import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Search', border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
