import 'package:flutter/material.dart';

class Messages {
  String message;
  DateTime dateTime;
  bool isSentByMe;
  Messages({
    required this.message,
    required this.dateTime,
    required this.isSentByMe,
  });
}
