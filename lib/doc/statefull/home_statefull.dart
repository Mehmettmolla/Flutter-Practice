import 'package:first/doc/core/companent/card/user_card.dart';
import 'package:first/doc/core/companent/image_opacity.dart';
import 'package:first/doc/core/enum/duration_enum.dart';
import 'package:first/doc/core/image_manager.dart';
import 'package:first/doc/statefull/model/user.dart';
import 'package:first/doc/stateless/home_detail_stateless.dart';
import 'package:flutter/material.dart';

class HomeViewStatefull extends StatefulWidget {
  @override
  _HomeViewStatefullState createState() => _HomeViewStatefullState();
}
class _HomeViewStatefullState extends State<HomeViewStatefull> {
  bool _isLoading = true;
  late final ImageManager imageManager;
  late final User user;
  @override
  void initState() {
    super.initState();
    waitForLoading();
    imageManager = ImageManager();
    user = User.fakeItem();
  }

  Future<void> waitForLoading() async {
    await Future.delayed(DurationEnums.LOW.time);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _isLoading ? CircularProgressIndicator() : FlutterLogo(),
          ImageOpacity(url: imageManager.randomImage),
          UserCard(
            user: user,
            onPressed: () {
              _navigateDetail();
            },
          )
        ],
      ),
    );
  }

  void _navigateDetail() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => HomeDetailStateless(model: user),
    ));
  }
}
