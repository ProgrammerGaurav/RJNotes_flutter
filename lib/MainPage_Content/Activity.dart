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
                    return Column(
                      children: [
                        Text(contrib.title),
                        Text(contrib.subtitle),
                        RaisedButton(
                          onPressed: () => {launch(contrib.link)},
                          color: Colors.blue,
                          child: Text(contrib.linkText),
                          textColor: Colors.white,
                        )
                      ],
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
