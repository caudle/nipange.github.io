import 'package:nipange/domain/review/review.dart';

abstract class IReviewRepo {
  // get all reviews
  Future<List<Review>> getAll(List ids);
  // create review
  Future create(
      {required Review review,
      required String userId,
      required String listingId});
}
