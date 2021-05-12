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
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(116, 116, 118, 1.0),
                                Color.fromRGBO(52, 118, 118, 1.0)
                              ]),
                            ),
                          ]).show();
                    },
                  );
                },
              ),
              Builder(
                builder: (context) {
                  return RaisedButton(
                    child: Text('Alert With Style'),
                    onPressed: () {
                      Alert(
                        context: context,
                        title: 'Alert Style',
                        desc: 'Alert With Style',
                        style: alertStyle(),
                        type: AlertType.info,
                        buttons: [
                          DialogButton(
                              child: Text(
                                'Cool',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              onPressed: () {
                                return Navigator.pop(context);
                              },
                              width: 150.0,
                              color: Colors.red,
                              //highlightColor: Colors.black,
                              //splashColor: Colors.black,
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(116, 116, 52, 1.0),
                                  Color.fromRGBO(50, 150, 191, 1.0)
                                ],
                              ),
                              radius: BorderRadius.circular(20.0))
                        ],
                      ).show();
                    },
                  );
                },
              ),
              Builder(builder: (context){
                return RaisedButton(
                    child: Text('Alert with customImage'),
                    onPressed: (){
                      Alert(
                        context: context,
                        title: 'Alert',
                        desc: 'Alert with custom Image',
                        image: Image.asset('images/temp.png')
                      ).show();
                });
              }),
              Builder(builder: (context){
                return RaisedButton(
                    child: Text('Alert with Custom Content'),
                    onPressed: (){
                      Alert(
                        context: context,
                        title: 'Login',
                        content: Column(
                          children: [
                            TextField(

                            )
                          ],
                        )
                      )
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}

AlertStyle alertStyle() {
  return AlertStyle(
      animationType: AnimationType.grow,
      animationDuration: Duration(milliseconds: 650),
      isCloseButton: false,
      descStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      titleStyle: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.red),
      backgroundColor: Colors.grey[200]);
}
