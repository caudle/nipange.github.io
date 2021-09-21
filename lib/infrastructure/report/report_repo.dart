import 'package:nipange/domain/report/i_report_repo.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:nipange/utils/api_conn.dart';

@LazySingleton(as: IReportRepo)
class ReportRepo implements IReportRepo {
  @override
  Future createReport({
    required String email,
    required String type,
    required String userType,
    required String comment,
  }) async {
    //create uri
    final uri = Uri.parse('$api/report');
    //http get req
    final response = await http.post(Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(<String, String>{
          "email": email,
          "type": type,
          "userType": userType,
          "comment": comment,
        }));

    // check if okay response
    if (response.statusCode == 201) {
      return null;
    }

    // bad response 400
    else {
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

  // get flags
  Future<List<String>> getFlags() async {
    //create uri
    final uri = Uri.parse('$api/flag');
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
      // convert json to map
      final List result = jsonDecode(response.body);
      // convert dynamic list to list of strings
      List<String> flags =
          result.map((flag) => flag['value'].toString()).toList();
      print(flags);
      return flags;
    }
    // bad response 400
    else {
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }
}
