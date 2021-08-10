import 'package:nipange/domain/listing/listing.dart';

abstract class ISearchRepo {
  // search
  Future<List<Listing>> search(String search);

  // get filter
  Future<List<String>> getFilter(String filter);

  // filter
  Future<List<Listing>> filter({
    String? type,
    List? prices,
    int? bed,
    int? bath,
    int? terms,
    List? size,
    List? amenities,
  });
}
