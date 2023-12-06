// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class firestore extends StatelessWidget {
  final String message;
  final String user;
  const firestore({super.key, required this.message, required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [Text(message), Text(user)],
        )
      ],
    );
  }
}
