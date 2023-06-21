import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:sorumatik/models/category.dart';
import 'package:sorumatik/models/question.dart';

const String baseUrl = "https://api.emrekilcioglu.com.tr/questions";

Future<List<Question>> getQuestions(Category category, int? total, String? difficulty) async {
  //String url = "$baseUrl?amount=$total&category=${category.id}";
  String url = "$baseUrl/${category.id}/$total";

  /*if(difficulty != null) {
    url = "$url&difficulty=$difficulty";
  }*/
  http.Response res = await http.get(Uri.parse(url));
  List<Map<String, dynamic>> questions = List<Map<String,dynamic>>.from(json.decode(res.body)["results"]);
  //Json çevirme burada

  return Question.fromData(questions);
}

// https://opentdb.com/api.php?amount=10&category=1&&difficulty=