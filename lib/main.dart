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
              ),
              Builder(
                builder: (context) {
                  return RaisedButton(
                    onPressed: () {
                      Alert(
                          context: context,
                          type: AlertType.error,
                          title: 'Alert With Button',
                          desc: 'It generate Alert Along a button',
                          buttons: [
                            DialogButton(
                              child: Text(
                                'Close It',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                return Navigator.pop(context);
                              },
                            )
                          ]).show();
                    },
                    child: Text('Alert Button'),
                  );
                },
              ),
              Builder(
                builder: (context) {
                  return RaisedButton(
                    child: Text('Alert Buttons'),
                    onPressed: () {
                      Alert(
                          type: AlertType.warning,
                          title: 'Alert with Buttons',
                          desc: 'Alert with multiple buttons',
                          context: context,
                          buttons: [
                            DialogButton(
                              child: Text(' FLAT',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              onPressed: () {
                                return Navigator.pop(context);
                              },
                              color: Color.fromRGBO(0, 179, 134, 1.0),
                            ),
                            DialogButton(
                                child: Text(
                                  'Gradient',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () {
                                  return Navigator.pop(context);
                                },
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(116, 116, 118, 1.0),
                                    Color.fromRGBO(52, 118, 118, 1.0)
                                  ]
                                ),
                            ),
                          ]).show();
                    },
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

AlertStyle alertStyle(){
  return AlertStyle(
    animationType: AnimationType.grow,

  );
}