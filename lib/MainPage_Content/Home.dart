import 'package:flutter/material.dart';
import 'package:flutter_pro/Pdf_view.dart';
import 'Profile.dart';
import 'Activity.dart';

void openProfile(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) {
        return Profile();
      },
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> semester = [
    [
      'Semester1',
      ["Python-I", "DBMS", "COD", "FOSS", "DM", "STATS", "SS"],
    ],
    [
      'Semester2',
      ["DS", "C", "Linux", "Python-II", "Calculus", "STATS", "GT"]
    ],
    [
      'Semester3',
      ["WEB", "Java", "IOT", "S4", "S5", "S6", "S7"]
    ],
    [
      'Semester4',
      ["Sub1", "Sub2", "Sub3", "Sub4", "Sub5", "Sub6", "Sub7"]
    ],
    [
      'Semester5',
      ["S1", "S2", "S3", "S4", "S5", "S6", "S7"]
    ],
    [
      'Semester6',
      ["S7", "S6", "S5", "S4", "S3", "S2", "S1"]
    ],
  ];
  int i = 0;
  sem(temp) {
    setState(() {
      i = temp;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
          child: ListView(children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 50, left: 8, right: 8, bottom: 8),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(110.0),
                child: Image.network(
                  "https://lh3.googleusercontent.com/ogw/ADGmqu8MPsj8Yry8hR2rYju_a2rTBhBrMFAK3fbaVnWu=s83-c-mo",
                  width: 100,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Name Surname\n",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Colors.black87)),
                  TextSpan(
                      text: "@username",
                      style: TextStyle(
                          fontFamily: 'Montserrat', color: Colors.black54)),
                ]),
              ),
            ],
          ),
        ),
        Divider(height: 1, thickness: 1, color: Colors.blueGrey[900]),
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              ListTile(
                dense: true,
                title: Text(
                  "Semester 1",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  sem(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                dense: true,
                title: Text(
                  "Semester 2",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  sem(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                dense: true,
                title: Text(
                  "Semester 3",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  sem(2);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                dense: true,
                title: Text(
                  "Semester 4",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  sem(3);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                dense: true,
                title: Text(
                  "Semester 5",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  sem(4);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                dense: true,
                title: Text(
                  "Semester 6",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  sem(5);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ])),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'RJNotes',
          style: TextStyle(
            fontSize: 25.0,
            fontFamily: 'Montserrat',
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.perm_identity,
                color: Colors.black,
              ),
              onPressed: () {
                openProfile(context);
              }),
        ],
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
        ),
      ),
      body: Column(
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
              'NAME',
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              color: Colors.transparent,
              child: Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pdf_view()),
                      );
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          semester[i][1][0],
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
                          semester[i][1][1],
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
                          semester[i][1][2],
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
                          semester[i][1][3],
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
                          semester[i][1][4],
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
                          semester[i][1][5],
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
                          semester[i][1][6],
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
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 330,
            child: Activity(
              contributor: getData(),
            ),
          ),
        ],
      ),
    );
  }
}
