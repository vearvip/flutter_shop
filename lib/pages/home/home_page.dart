import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/ad_bannber.dart';
import 'package:flutter_shop/widgets/carouse_swiper.dart';
import 'package:flutter_shop/widgets/nav_menu.dart';
import '../../service/api.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    // ScreenUtil.init(context, width: 750, height: 1334);
    return Scaffold(
      appBar: AppBar(
        textTheme: TextTheme(headline6: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 40,
          // maxWidth: 200
        ),
        child: new TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            hintText: '请输入搜索内容', 
            // contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.grey[200],
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
      body: SingleChildScrollView(
          child: FutureBuilder(
        future: getHomePageContent(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print('data ${snapshot.data}');
            print('data ${snapshot.data['data']['carouseSwiperImages']}');
            print('data ${snapshot.data.runtimeType}');
            var swiperDateList = snapshot.data['data']['carouseSwiper'];
            var navigatorList = snapshot.data['data']['navMenu'];
            var adBanner = snapshot.data['data']['adBanner'];
            // var data = json.decode(snapshot.data.toString());
            // print('data ');
            return Column(
              children: <Widget>[
                CarouselSwiper(
                  swiperDateList: swiperDateList,
                ),
                NavMenu(
                  navigatorList: navigatorList,
                ),
                ADBanner(
                  banner: adBanner,
                ),
                
              ],
            );
          } else {
            return Center(
              child: Text('666'),
            );
          }
        },
      )),
    );
  }
}
