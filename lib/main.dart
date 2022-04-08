import 'package:first/doc/post_json_place_holder/post_json_place_holder.dart';
import 'package:first/doc/statefull/home_statefull.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: PostJsonPlaceHolder(),
    ); 
  }
}