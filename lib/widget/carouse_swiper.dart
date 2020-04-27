
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';

class CarouselSwiper extends StatelessWidget {
  final List swiperDateList;
  CarouselSwiper({Key key, this.swiperDateList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);
    return Container(
      height: ScreenUtil().setHeight(363),
      width: ScreenUtil().setWidth(750),
      child: Swiper(
        itemCount: swiperDateList.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(swiperDateList[index]['url'], fit: BoxFit.cover,);
        },
        pagination: SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}