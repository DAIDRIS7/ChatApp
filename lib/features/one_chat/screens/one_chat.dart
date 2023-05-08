import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:com/features/one_chat/model/one_chat_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class OneChatScreen extends StatefulWidget {
  const OneChatScreen({super.key});

  @override
  State<OneChatScreen> createState() => _OneChatScreenState();
}

class _OneChatScreenState extends State<OneChatScreen> {
  var oneMessage;
  final myNewMessage = TextEditingController();
  final _fireStore = FirebaseFirestore.instance;
  final user = FirebaseAuth.instance.currentUser!.email;
  List<Widget> allMessages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                  //  margin: EdgeInsets.all(7),
                  child: StreamBuilder<QuerySnapshot>(
                stream: _fireStore.collection('allmessages').snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        '${snapshot.error}',
                      ),
                    );
                  }
                  if (snapshot.hasData) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    final data = snapshot.data!.docs;
                    for (var myData in data) {
                      final message = myData.get('onemessage');
                      final sender = myData.get('owner');
                      bool isSendByMe = sender == user;

                      allMessages.add(MessageStyle(
                          message: message, isSendByMe: isSendByMe));
                    }
                    return ListView(
                      children: allMessages,
                    );
                  }

                  return SizedBox();
                },
              )),
            ),
            _newMessage(),
          ],
        ),
      ),
    );
  }

  _newMessage() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            onChanged: (value) {
              oneMessage = value;
            },
            controller: myNewMessage,
            decoration: InputDecoration(
                hintText: 'write here',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 7),
                )),
          ),
        ),
        SizedBox(
          width: 7,
        ),
        FloatingActionButton(
          onPressed: () async {
            myNewMessage.clear();
            await _fireStore
                .collection('allmessages')
                .add({'onemessage': oneMessage, 'owner': user});
          },
          child: Icon(
            Icons.send,
          ),
        ),
      ],
    );
  }
}

class MessageStyle extends StatelessWidget {
  var message;
  bool isSendByMe;
  MessageStyle({super.key, this.message, required this.isSendByMe});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
      alignment: isSendByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          color: isSendByMe ? Colors.amberAccent : Colors.grey,
          borderRadius: isSendByMe
              ? BorderRadius.only(
                  bottomLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                  topLeft: Radius.circular(7),
                )
              : BorderRadius.only(
                  bottomLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                  topRight: Radius.circular(7),
                ),
        ),
        padding: EdgeInsets.all(7),
        margin: EdgeInsets.all(7 + 7),
        child: Text(
          '$message',
        ),
      ),
    );
  }
}
