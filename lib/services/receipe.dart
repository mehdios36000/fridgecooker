import 'dart:convert';
import 'package:fridgecooker/models/hits.dart';
import 'package:http/http.dart' as http;

class Recipie {
  List<Hits> hits = [];

  Future<void> getReceipe() async {
    String url =
        "https://api.edamam.com/search?q=banana&app_id=5c47aed1&app_key=0f3bc07018ad9fcd3218fad54578c3f5";
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
    jsonData["hits"].forEach((element) {
      Hits hits = Hits(
        recipeModel: element['recipe'],
      );
      // hits.recipeModel = add(Hits.fromMap(hits.recipeModel));
    });
  }
}