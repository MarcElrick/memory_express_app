import 'package:flutter/material.dart';
import 'package:memory_express_app/ui/main_screen.dart';
import 'package:memory_express_app/ui/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Express',
      theme: lightTheme,
      home: MainScreen(title: 'Memory Express'),
      darkTheme: darkTheme,
    );
  }
}
