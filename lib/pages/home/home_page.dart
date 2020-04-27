import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    getHttp();
    return Scaffold(
      appBar: AppBar(elevation: 0,title: Text('本地生活'),),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            TextField(controller: TextEditingController()),
            RaisedButton(child: Text('kdkdkdk'),),
            RaisedButton(child: Text('kdkdkdk'),),
            RaisedButton(child: Text('kdkdkdk'),),
            RaisedButton(child: Text('kdkdkdk'),),
            RaisedButton(child: Text('kdkdkdk'),),
            RaisedButton(child: Text('kdkdkdk'),),
            RaisedButton(child: Text('kdkdkdk'),),
            RaisedButton(child: Text('kdkdkdk'),)
          ],)
        )
      ),       
    );
  }

  void getHttp() async {
    try {
      Response response = await Dio().get('https://reqres.in/api/users?page=2');
      return print(response);
    } catch (e) {
      return print('😡$e');
    }
  }
}