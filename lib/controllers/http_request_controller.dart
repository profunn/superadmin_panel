import 'dart:convert';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:superadmin_panel/utils/variables.dart';

import '../models/column_names_model.dart';

class HttpRequestController extends GetxController {
  fetchTableNames() async {}

  fetchColumnNames(tableName) async {
    var url = Uri.parse('http://localhost:3000/tac/admin/takeColumnNames');
    var response = await http.post(url, body: {"tableName": tableName});
    if (response.statusCode == 200) {
      final columns = takeColumnNameFromJson(response.body);
      for (int i = 0; i < columns.length; i++) {
        Variables.fetchedColumnNames.add(columns[i].columnName);
      }
    }
  }

  fetchTableValues(tablaName) async {
    var url = Uri.parse('http://localhost:3000/tac/admin/takeTableValues');
    var response = await http.post(url, body: {"tableName": tablaName});
    if (response.statusCode == 200) {
      final rows = jsonDecode(response.body);
      Variables.rowValues = rows;
    }
  }
}
