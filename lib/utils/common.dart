import 'package:nipange/domain/review/review.dart';

// base api
final String api = "http://172.20.10.11:5000";

// get rating of reviews
double getRating(List<Review> reviews) {
  double rate = 0;
  reviews.forEach((review) {
    rate = rate + review.rate;
  });
  return rate > 0 ? rate / reviews.length : 0;
}
