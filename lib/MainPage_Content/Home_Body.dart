import 'package:flutter/material.dart';
import 'package:flutter_pro/MainPage_Content/Activity.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 30.0),
          child: Text(
            'Welcome...',
            style: TextStyle(
              fontSize: 35.0,
              fontFamily: 'Montserrat',
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0, left: 10.0, top: 20.0),
          child: Text(
            'Harshad',
            style: TextStyle(
              fontSize: 25.0,
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
        color: Colors.transparent,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Text(
                    'COD',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 5.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(0, 76, 64, 1),
                ),
                height: 80.0,
                width: 80.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                child: Center(
                  child: Text(
                    'Python-1',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 5.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(240, 137, 118, 1),
                ),
                height: 80.0,
                width: 80.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                child: Center(
                  child: Text(
                    'FOSS',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 5.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(246, 207, 152, 1),
                ),
                height: 80.0,
                width: 80.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                child: Center(
                  child: Text(
                    'DBMS',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 5.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(143, 185, 171, 1),
                ),
                height: 80.0,
                width: 80.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                child: Center(
                  child: Text(
                    'Stats',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 5.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(255, 177, 79, 1),
                ),
                height: 80.0,
                width: 80.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                child: Center(
                  child: Text(
                    'DM',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 5.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(203, 187, 223, 1),
                ),
                height: 80.0,
                width: 80.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                child: Center(
                  child: Text(
                    'SS',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 5.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(99, 194, 216, 1),
                ),
                height: 80.0,
                width: 80.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
