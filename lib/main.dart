import 'package:flutter/material.dart';
import 'package:superadmin_panel/pages/starter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Super Admin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Starter(),
    );
  }
}
