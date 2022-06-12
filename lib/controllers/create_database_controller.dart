import 'package:get/get.dart';
import 'package:superadmin_panel/utils/variables.dart';
import '../create_objects.dart';

class CreateDatabaseController extends GetxController {
  addColumnNamesToList() {
    for (int i = 0; i < Variables.fetchedColumnNames.length; i++) {
      var titleKey = Variables.fetchedColumnNames[i].toString();
      var item = createColumnObject(
          CreateObjects(title: titleKey, index: i + 1, key: titleKey));
      Variables.columnNames.add(item);
    }
    print(Variables.columnNames);
  }

  addRowToList() async {}

  @override
  void onInit() async {
    super.onInit();
  }
}
