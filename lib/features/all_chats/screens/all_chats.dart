import 'package:flutter/material.dart';

class AllChats extends StatefulWidget {
  @override
  State<AllChats> createState() => _AllChatsState();
}

class _AllChatsState extends State<AllChats> {
  int activeIndex = 0;
  _showModalBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(42),
          ),
        ),
        context: context,
        builder: (context) {
          return ListView(
            children: [
              Image.asset(
                'assets/images/download.png',
                height: 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7,
              ),
              Container(
                margin: EdgeInsets.all(7),
                child: ListTile(
                  contentPadding: EdgeInsets.all(7),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 7 - 6,
                    ),
                    borderRadius: BorderRadius.circular(7 + 7),
                  ),
                  leading: const CircleAvatar(
                    radius: 7 + 7 + 7 + 7 + 7,
                    backgroundImage: AssetImage(
                      'assets/images/daidris7.jpg',
                    ),
                  ),
                  title: const Text(
                    'DAIDRIS7',
                  ),
                  subtitle: const Text(
                    'DAIDRIS7',
                  ),
                  trailing: Column(
                    children: [
                      const Text(
                        'DAIDRIS7',
                      ),
                      const SizedBox(height: 7 + 7),
                      const Text(
                        'DAIDRIS7 ',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: activeIndex,
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
            if (index == 0) _showModalBottomSheet();
          },
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              label: 'DAIDRIS7',
              icon: Icon(Icons.favorite),
            ),
            const BottomNavigationBarItem(
              label: 'DAIDRIS7',
              icon: Icon(Icons.favorite),
            ),
            const BottomNavigationBarItem(
              label: 'DAIDRIS7',
              icon: Icon(Icons.favorite),
            ),
            const BottomNavigationBarItem(
              label: 'DAIDRIS7',
              icon: Icon(Icons.favorite),
            ),
            const BottomNavigationBarItem(
              label: 'DAIDRIS7',
              tooltip: 'GOAT',
              icon: Icon(Icons.favorite),
            ),
          ]),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 7 + 7 + 7,
                    horizontal: 7 + 7 + 7 + 7,
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'Welcome back ,DAIDRIS7',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 7 + 7 + 7,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height:
                  7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7 + 7,
              child: ListView.builder(
                //              shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(7),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CircleAvatar(
                        foregroundImage: AssetImage(
                          'assets/images/daidris7.jpg',
                        ),
                        radius: 7 + 7 + 7 + 7 + 7,
                        //        child: Image.asset(
                        //              'assets/images/daidris7.jpg',
                        //            height: 7 + 7 + 7 + 7 + 7 + 7 + 7,
                        // width: 7 + 7 + 7 + 7 + 7 + 7 + 7,
                        //      fit: BoxFit.cover,
                        //      ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        'DAIDRIS7',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
