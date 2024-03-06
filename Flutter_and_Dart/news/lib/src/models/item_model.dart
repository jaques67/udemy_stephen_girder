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

  ItemModel.fromJSON(Map<String, dynamic> parsedJSon)
    : id = parsedJSon['id'],
      deleted = parsedJSon['deleted'] ?? false,
      type = parsedJSon['type'] ?? '',
      by = parsedJSon['by'] ?? '',
      time = parsedJSon['time'] ?? 0,
      text = parsedJSon['text'] ?? '',
      dead = parsedJSon['dead'] ?? false,
      parent = parsedJSon['parent'] ?? 0,
      kids = parsedJSon['kids'] ?? [],
      url = parsedJSon['url'] ?? '',
      score = parsedJSon['score'] ?? 0,
      title = parsedJSon['title'] ?? '',
      descendants = parsedJSon['descendants'] ?? 0;
}
