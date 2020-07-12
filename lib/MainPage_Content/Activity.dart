import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

Future<ResultContributor> getData() async {
  final response =
      await http.get('https://rjnotes.herokuapp.com/api/activity/');
  if (response.statusCode == 200) {
    return fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

class Contributor {
  final String title;
  final String subtitle;
  final String linkText;
  final String link;

  Contributor({this.title, this.subtitle, this.linkText, this.link});
}

class ResultContributor {
  final List<Contributor> result;
  ResultContributor({this.result});
}

ResultContributor fromJson(List<dynamic> json) {
  List<Contributor> listContributor = List<Contributor>();
  json.forEach((jsonContributor) {
    Contributor contrib = new Contributor(
      title: jsonContributor['title'],
      subtitle: jsonContributor['subtitle'],
      linkText: jsonContributor['linkText'],
      link: jsonContributor['link'],
    );
    listContributor.add(contrib);
  });

  return new ResultContributor(result: listContributor);
}

class Activity extends StatelessWidget {
  final Future<ResultContributor> contributor;
  Activity({Key key, this.contributor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<ResultContributor>(
          future: contributor,
          builder: (context, fetchData) {
            if (fetchData.hasData) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: fetchData.data.result.length,
                  itemBuilder: (context, index) {
                    final contrib = fetchData.data.result[index];
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                contrib.title,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              contrib.subtitle,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FlatButton(
                                onPressed: () => {launch(contrib.link)},
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.tealAccent[700]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      contrib.linkText,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 12,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            } else if (fetchData.hasError) {
              return Text("${fetchData.error}");
            }
            return CircularProgressIndicator();
          }),
    );
  }
}
