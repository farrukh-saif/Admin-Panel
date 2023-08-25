import 'package:admin_panel/constants.dart';
import 'package:admin_panel/widgets/authentication.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData.dark(),
      home: const Authentication(),
      debugShowCheckedModeBanner: false,
    );
  }
}
