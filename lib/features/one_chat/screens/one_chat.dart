import 'package:com/features/one_chat/model/one_chat_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class OneChatScreen extends StatefulWidget {
  @override
  State<OneChatScreen> createState() => _OneChatScreenState();
}

class _OneChatScreenState extends State<OneChatScreen> {
  final myNewMessage = TextEditingController();
  List<Messages> messages = [
    Messages(
        message: 'Hello DAIDRIS7', dateTime: DateTime.now(), isSentByMe: false),
    Messages(message: 'Hello', dateTime: DateTime.now(), isSentByMe: true),
    Messages(
        message: 'How are you?', dateTime: DateTime.now(), isSentByMe: false),
    Messages(
        message: 'Iam Fine and you ',
        dateTime: DateTime.now(),
        isSentByMe: true),
    Messages(message: 'Good ', dateTime: DateTime.now(), isSentByMe: false),
    Messages(
        message: 'Okey Always', dateTime: DateTime.now(), isSentByMe: true),
    Messages(message: 'With you', dateTime: DateTime.now(), isSentByMe: false),
    Messages(message: 'Thanks 😊', dateTime: DateTime.now(), isSentByMe: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(7),
                child: GroupedListView<Messages, DateTime>(
                  elements: messages,
                  groupBy: (message) => DateTime(220),
                  floatingHeader: true,
                  groupHeaderBuilder: (message) => SizedBox(),
                  itemBuilder: (context, message) {
                    return Align(
                      alignment: message.isSentByMe == false
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Card(
                        elevation: 0,
                        child: Text(
                          message.message,
                          style: TextStyle(
                            color: message.isSentByMe == true
                                ? Colors.blue
                                : Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
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
            controller: myNewMessage,
            onSubmitted: (value) {},
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
          onPressed: () {
            final newMessage = Messages(
                dateTime: DateTime.now(),
                isSentByMe: true,
                message: myNewMessage.text);
            setState(() {
              messages.add(newMessage);
              myNewMessage.clear();
            });
          }, //myNewMessage(),
          child: Icon(
            Icons.send,
          ),
        ),
      ],
    );
  }
}
