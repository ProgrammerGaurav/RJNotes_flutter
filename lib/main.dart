import 'package:flutter/material.dart';
import 'package:flutter_pro/MainPage_Content/Home.dart';

import 'MainPage_Content/Home.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'RJ Notes';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Home(),
    );
  }
}
