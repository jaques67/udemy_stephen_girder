import 'dart:convert';

class ItemModel {
  final int id;
  final bool deleted;
  final String type;
  final String by;
  final int time;
  final String text;
  final bool dead;
  final int parent;
  final List<dynamic> kids;
  final String url;
  final int score;
  final String title;
  final int descendants;

  ItemModel.fromJson(Map<String, dynamic> parsedJSon)
      : id = parsedJSon['id'],
        deleted = parsedJSon['deleted'],
        type = parsedJSon['type'],
        by = parsedJSon['by'],
        time = parsedJSon['time'],
        text = parsedJSon['text'],
        dead = parsedJSon['dead'],
        parent = parsedJSon['parent'],
        kids = parsedJSon['kids'],
        url = parsedJSon['url'],
        score = parsedJSon['score'],
        title = parsedJSon['title'],
        descendants = parsedJSon['descendants'];

  ItemModel.fromDb(Map<String, dynamic> parsedJSon)
      : id = parsedJSon['id'],
        deleted = parsedJSon['deleted'] == 1,
        type = parsedJSon['type'],
        by = parsedJSon['by'],
        time = parsedJSon['time'],
        text = parsedJSon['text'],
        dead = parsedJSon['dead'] == 1,
        parent = parsedJSon['parent'],
        kids = jsonDecode(parsedJSon['kids']),
        url = parsedJSon['url'],
        score = parsedJSon['score'],
        title = parsedJSon['title'],
        descendants = parsedJSon['descendants'];
}
