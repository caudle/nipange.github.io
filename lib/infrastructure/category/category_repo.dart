import 'package:injectable/injectable.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nipange/domain/category/category.dart';
import 'package:nipange/domain/category/i_category_repo.dart';

@LazySingleton(as: ICategoryRepo)
class CategoryRepo implements ICategoryRepo {
  final String api = "http://172.20.10.11:5000";
  Future<List<Category>> getAll() async {
    List<Category> categories = [];
    // craete uri
    final uri = Uri.parse('$api/api/category');
    //http get req
    final response = await http.get(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
    );

    // check if okay response
    if (response.statusCode == 200) {
      print(response.body);
      // decode response to list
      List bodyList = json.decode(response.body);
      print("decoded body $bodyList");
      // add response to cats
      categories.addAll(
          bodyList.map((category) => Category.fromJson(json.encode(category))));
      print("categories $categories");
      return categories;
    }

    // bad response 400
    else {
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }
}
