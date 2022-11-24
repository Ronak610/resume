import 'package:flutter/material.dart';
import 'package:resume_2/finalpage.dart';
import 'package:resume_2/resume.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => resume(),
        'f': (context) => Final(),
      },
      debugShowCheckedModeBanner: false,
    ),

  );
}
