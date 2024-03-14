import 'package:flutter/material.dart';
import '../models/item_model.dart';
import '../blocs/stories_provider.dart';
import 'dart:async';

class NewsListTile extends StatelessWidget {
  final int itemId;

  NewsListTile({required this.itemId});

  @override
  Widget build(context) {
    final bloc = StoriesProvider.of(context);

    return StreamBuilder(
        stream: bloc?.items,
        builder: (context, AsyncSnapshot<Map<int, Future<ItemModel?>>> snapshot) {
          if (!snapshot.hasData) {
            return Text('Stream still loading');
          }
          
        },
    );
  }
}
