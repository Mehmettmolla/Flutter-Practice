import 'package:first/doc/core/companent/card/post_card.dart';
import 'package:first/doc/post_json_place_holder/post_json_place_holder_view_model.dart';
import 'package:flutter/material.dart';


class PostJsonPlaceHolderView extends PostJsonPlaceHolderViewModel {
  final String title = 'Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: isLoading ? Center(child: LinearProgressIndicator()) : buildListView(),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: postItems?.length ?? 0,
      itemBuilder: (context, index) => PostCard(model: postItems?[index]),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline4?.copyWith(color: Theme.of(context).colorScheme.surface),
      ),
    );
  }
}