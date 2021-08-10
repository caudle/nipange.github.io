import 'category.dart';

abstract class ICategoryRepo {
  Future<List<Category>> getAll();
}
