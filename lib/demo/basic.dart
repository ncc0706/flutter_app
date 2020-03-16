import 'package:flutter/material.dart';

class Basic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextDemo();
  }
}

class TextDemo extends StatelessWidget {
  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '《$_title》-- $_author。 君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发， 朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.left,
        maxLines: 5,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
