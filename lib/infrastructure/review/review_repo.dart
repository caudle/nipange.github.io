import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/review/i_review_repo.dart';
import 'package:nipange/domain/review/review.dart';
import 'package:nipange/utils/api_conn.dart';

@LazySingleton(as: IReviewRepo)
class ReviewRepo implements IReviewRepo {
  // get all reviews
  Future<List<Review>> getAll(List ids) async {
    List<Review> reviews = <Review>[];
    //create uri
    final uri = Uri.parse('$api/review');
    //http post req
    final response = await http.post(Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(<String, dynamic>{
          "ids": ids,
        }));

    // check if okay response
    if (response.statusCode == 200) {
      print(response.body);
      // decode response to list
      List bodyList = json.decode(response.body);
      print("decoded body $bodyList");
      // add response to listings
      reviews.addAll(
          bodyList.map((review) => Review.fromJson(json.encode(review))));
      print("reviews $reviews");
      return reviews;
    }

    // bad response 400
    else {
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

  // create review
  Future create(
      {required Review review,
      required String userId,
      required String listingId}) async {
    //create uri
    final uri = Uri.parse('$api/review/$userId');
    //make post req
    final response = await http.post(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
      body: jsonEncode(<String, dynamic>{
        "text": review.text,
        "rate": review.rate,
        "user": review.user,
        "listing": listingId
      }),
    );

    if (response.statusCode == 201) {
      //if status code is 201 create response
      // return review
      print("response: ${response.body}");
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
