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
        Semesters(),
        Activity(),
      ],
    );
  }
}

class Semesters extends StatefulWidget {
  @override
  _SemestersState createState() => _SemestersState();
}

class _SemestersState extends State<Semesters> {
  List<String> categories = [
    "Activity",
    "Semester 1",
    "Semester 2",
    "Semester 3",
    "Semester 4",
    "Semester 5",
    "Semester 6"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                categories[index],
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index
                        ? Colors.black
                        : Colors.grey[300]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                margin: EdgeInsets.only(top: 3.0),
                height: 2,
                width: 30,
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
