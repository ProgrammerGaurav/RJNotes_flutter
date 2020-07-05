import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 150,
              child: Card(
                color: Colors.redAccent,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/Guurav.jpg'),
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Center(
                    child: Text(
                      '🤩गौरव भाऊ गुप्ता उर्फ Programmer Gaurav यांना वाढविदवसाच्या हार्दिक शुभेच्छा🤩',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      '-Harshad (@the.cs.Guy)',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
