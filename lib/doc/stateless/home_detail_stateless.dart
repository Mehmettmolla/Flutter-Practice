import 'package:first/doc/core/companent/scroll/scroll_bar_single.dart';
import 'package:first/doc/statefull/model/user.dart';
import 'package:flutter/material.dart';

class HomeDetailStateless extends StatelessWidget {
  final User model;

  const HomeDetailStateless({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: ScrollBarSingle(child: Text(model.storyText),),
    );
  }
}
