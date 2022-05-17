// ignore_for_file: prefer_const_constructors

import 'package:color_changer/utils/colors.dart';
import 'package:flutter/material.dart';
import 'dart:async';

bool _lightmode = true;

ThemeData _darkTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.dark,
    primaryColor: Colors.blue);

ThemeData _lightTheme = ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.light,
    primaryColor: Colors.amber,
    buttonTheme: ButtonThemeData(buttonColor: Colors.amber));

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  navigateToDeviceScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _lightmode ? _lightTheme : _darkTheme,
      title: 'Dark Mode App',
      darkTheme: _darkTheme,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dark Mode App'),
            actions: [
              Switch(
                  value: _lightmode,
                  onChanged: (state) {
                    setState(() {
                      _lightmode = state;
                    });
                  })
            ],
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: "Enter Text Here"),
                ),
                RaisedButton(child: Text("Click Here"), onPressed: () {}),
                // Switch(
                //     value: _lightmode,
                //     onChanged: (state) {
                //       setState(() {
                //         _lightmode = state;
                //       });
                //     }),
              ],
            ),
          )),
    );
  }
}
