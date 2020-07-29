import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text('List of Doctors'),
        ),
        body: LanguageSelectWidget(),
      ),
    );
  }
}

class LanguageSelectWidget extends StatefulWidget {
  @override
  _LanguageSelectWidgetState createState() => _LanguageSelectWidgetState();
}

class _LanguageSelectWidgetState extends State<LanguageSelectWidget> {
  List<String> _languages = [
    'Gynac',
    'Ortho',
    'alpha',
    'beta',
    'gamma',
    'delta',
    'epsilon',
    'chi',
    'pi',
    'a',
    'b',
    'c',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 30.0,
        children: _languages
            .map((language) => Column(
                  children: <Widget>[
                    Center(
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                          'https://images1-fabric.practo.com/ashwini-clinic-bangalore-1477558268-5811bffcbf739.jpg',
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          language,
                        ),
                      ),
                    ),
                  ],
                ))
            .toList(),
      ),
    );
  }
}
