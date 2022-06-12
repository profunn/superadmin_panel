import 'package:get/get.dart';
import 'package:superadmin_panel/models/column_names_model.dart';
import '../create_objects.dart';
import 'package:http/http.dart' as http;

class CreateDatabaseController extends GetxController {
  var columnNames = [].obs;
  var newColumnNames = [].obs;
  final List rows_values = [];

  fetchColumnNames(column) async {
    var url = Uri.parse('http://localhost:3000/tac/admin/takeColumnNames');
    var response = await http.post(url, body: {"column": column});
    if (response.statusCode == 200) {
      final columns = takeColumnNameFromJson(response.body);
      for (int i = 0; i < columns.length; i++) {
        columnNames.add(columns[i].columnName);
      }
      print(columnNames);
      update();
    }
  }

  addColumnNamesToList() {
    for (int i = 0; i < columnNames.length; i++) {
      var titleKey = columnNames[i].toString();
      var item = createColumnObject(
          CreateObjects(title: titleKey, index: i + 1, key: titleKey));
      newColumnNames.add(item);
    }
    print(newColumnNames);
  }

  @override
  void onInit() async {
    super.onInit();
    await fetchColumnNames('added_news');
    await addColumnNamesToList();
  }
}
