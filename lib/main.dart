import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/wrapper/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '本地生活',
        debugShowCheckedModeBanner: false, // 去除右上角的debugger角标
        theme: ThemeData(primaryColor: Colors.blue),
        home: Wrapper(),
      ),
    );
  }
}
