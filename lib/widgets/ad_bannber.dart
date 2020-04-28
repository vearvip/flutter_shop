import 'package:flutter/material.dart';

class ADBanner extends StatelessWidget {
  final Map banner;
  const ADBanner({Key key, this.banner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0), 
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(banner['url'])
      ),
    );
  }
}