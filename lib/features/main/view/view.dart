import 'package:com/features/add/view/view.dart';
import 'package:com/features/call/veiw/view.dart';
import 'package:com/features/messages/view/view.dart';
import 'package:com/features/profile/view/view.dart';
import 'package:com/features/search/view/view.dart';
import 'package:flutter/material.dart';

//import 'package:com/features/profile/screen/profile_screen.dart';
class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int activeIndex = 0;

  final listOfPages = [
    Messages(),
    CallsPage(),
    Add(),
    SearchPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: activeIndex,
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              label: 'Messeges',
              icon: Icon(Icons.forum_outlined),
            ),
            const BottomNavigationBarItem(
              label: 'Calls',
              icon: Icon(Icons.call),
            ),
            const BottomNavigationBarItem(
              label: 'Add',
              icon: Icon(Icons.add),
            ),
            const BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            ),
            const BottomNavigationBarItem(
              label: 'Profile',
              tooltip: 'GOAT',
              icon: Icon(Icons.person),
            ),
          ]),
      backgroundColor: Colors.black,
      body: listOfPages[activeIndex],
    );
  }
}
