import 'package:flutter/material.dart';
import 'package:medical_store/bottam.dart';
import 'package:medical_store/home.dart';
import 'package:medical_store/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}
