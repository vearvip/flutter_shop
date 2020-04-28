import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  const ShadowContainer({Key key, this.child, this.margin, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.all(0),
      padding: padding ?? EdgeInsets.all(0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 0.0), //阴影xy轴偏移量
                blurRadius: 2, //阴影模糊程度
                spreadRadius: 0 //阴影扩散程度
                )
          ]),
      child: child,
    );
  }
}
