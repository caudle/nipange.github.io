import 'package:injectable/injectable.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nipange/domain/category/category.dart';
import 'package:nipange/domain/category/i_category_repo.dart';
import 'package:nipange/utils/api_conn.dart';

@LazySingleton(as: ICategoryRepo)
class CategoryRepo implements ICategoryRepo {
  Future<List<Category>> getAll() async {
    List<Category> categories = [];
    // craete uri
    final uri = Uri.parse('$api/category');
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
      // decode response to list
      List bodyList = json.decode(response.body);

      // add response to cats
      categories.addAll(
          bodyList.map((category) => Category.fromJson(json.encode(category))));

      return categories;
    }

    // bad response 400
    else {
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }
}
