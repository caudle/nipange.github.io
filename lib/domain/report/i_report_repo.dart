abstract class IReportRepo {
  // create report
  Future createReport({
    required String email,
    required String type,
    required String userType,
    required String comment,
  });

  // get flags
  Future<List<String>> getFlags();
}
