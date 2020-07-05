import 'package:flutter/material.dart';
import 'Home_Body.dart';
import 'Profile.dart';
import 'Activity.dart';

void openProfile(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Profile();
    },
  ));
}

void openactivity(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Activity();
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'RJNotes',
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Montserrat',
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {
                openactivity(context);
              }),
          IconButton(
              icon: const Icon(
                Icons.perm_identity,
                color: Colors.black,
              ),
              onPressed: () {
                openProfile(context);
              }),
        ],
      ),
      body: HomeBody(),
    );
  }
}
