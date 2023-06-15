import 'package:flutter/material.dart';
import 'package:from_validation/signup_validation.dart';

import 'demo _validation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: demo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
