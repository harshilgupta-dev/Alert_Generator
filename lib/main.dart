import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alert Generator'),
          backgroundColor: Colors.red,
          leading: Icon(
            Icons.warning_amber_rounded,
            size: 30.0,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Builder(
                builder: (context) {
                  return RaisedButton(
                    onPressed: () {
                      Alert(
                              context: context,
                              title: 'Basic Alert',
                              desc: 'It generate basic alert')
                          .show();
                    },
                    child: Text('Basic Alert'),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
