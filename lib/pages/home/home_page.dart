import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/widget/carouse_swiper.dart';
import '../../service/api.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
      appBar: AppBar(
        textTheme: TextTheme(title: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          margin: EdgeInsets.only(top: 10, bottom: 10),
          // decoration: BoxDecoration(border: Border.all(
          //   color: Colors.blue,
          //   width: 2,
          // ),),
          child: Expanded(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 40,
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 10, 15),
                  fillColor: Color(0x30cccccc),
                  filled: true,
                  hintText: '98E手办限时甩卖',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x00FF0000)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white, //边框颜色为白色
                      width: 1, //宽度为5
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5), //边角为30
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.blue),
            padding: EdgeInsets.only(left: 0),
            onPressed: () {},
          ),
        ],
      ),
      body: FutureBuilder(
        future: getHomePageContent(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print('data ${snapshot.data}');
            print('data ${snapshot.data['data']['carouseSwiperImages']}');
            print('data ${snapshot.data.runtimeType}');
            var swiperDateList = snapshot.data['data']['carouseSwiperImages'];
            // var data = json.decode(snapshot.data.toString());
            // print('data $data');
            return Column(
              children: <Widget>[
                CarouselSwiper(
                  swiperDateList: swiperDateList,
                )
              ],
            );
          } else {
            return Center(
              child: Text('666'),
            );
          }
        },
      ),
    );
  }
}
