import 'dart:convert';
import 'package:http/http.dart' show Client;
import '../models/item_model.dart';

const _root = 'https://hacker-news.firebaseio.com/v0';

class NewsApiProvider {
  Client client = Client();

  fetchTopIds() async {
    final response = await client
        .get('$_root/topstories.json' as Uri);
    final ids = jsonDecode(response.body);

    return ids;
  }

  fetchItem(int id) async {
    final response = await client
        .get('$_root/item/$id.json' as Uri);
    final parsedJson = jsonDecode(response.body);

    return ItemModel.fromJSON(parsedJson);
  }
}
