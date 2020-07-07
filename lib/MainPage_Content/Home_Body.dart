import 'package:flutter/material.dart';
import 'package:flutter_pro/MainPage_Content/Activity.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Welcome',
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
          child: Text(
            'XYZ',
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
        Subjects(),
        Activity(),
      ],
    );
  }
}

class Subjects extends StatefulWidget {
  @override
  _SubjectsState createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: <Widget>[
            Card(
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}
