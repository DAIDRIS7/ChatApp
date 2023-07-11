import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:com/features/call/model/model.dart';
import 'package:com/features/call/veiw/video/video.dart';
import 'package:flutter/material.dart';

int _uid = 0;

late RtcEngine agoraEngine;

class CallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
    );
  }
}

_bodyWidget(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      CircleAvatar(
        backgroundImage: AssetImage(
          'assets/images/daidris7.jpg',
        ),
      ),
      Text(
        'DAIDRIS7',
      ),
      Text(
        '0922818514',
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPage(),
                ),
              );
            },
            icon: Icon(Icons.camera),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
        ],
      ),
    ],
  );
}
