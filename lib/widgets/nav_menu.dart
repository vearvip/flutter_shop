import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shop/widgets/shadow_container.dart';

class NavMenu extends StatelessWidget {
  final List navigatorList;
  const NavMenu({Key key, this.navigatorList}) : super(key: key);

  Widget _gtidViweItem(BuildContext context, item) {
    return InkWell(
      onTap: () {
        print('点击了导航');
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
              width: ScreenUtil().setWidth(70),
              height: ScreenUtil().setHeight(70),
              // width: 30,
              // height: 30,
              child: ClipOval(
                  child: Image.network(
                item['url'],
                width: ScreenUtil().setHeight(95),
              ))),
          Text(item['name'])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ScreenUtil().setHeight(330),
        // decoration: BoxDecoration(border: Border.all(width: 1)),
        padding: EdgeInsets.all(3.0),
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ShadowContainer(
            child: GridView.count(
          crossAxisCount: 5,
          padding: EdgeInsets.all(5.0),
          childAspectRatio: 0.9,
          children: navigatorList.map((item) {
            return Container(child: _gtidViweItem(context, item));
          }).toList(),
        )));
  }
}
