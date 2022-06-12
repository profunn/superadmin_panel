import 'package:editable/editable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superadmin_panel/utils/variables.dart';

import '../controllers/create_database_controller.dart';

class CreatedDataBase extends StatelessWidget {
  CreatedDataBase({
    Key? key,
  }) : super(key: key);
  final cdc = Get.put(CreateDatabaseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Editable(
        columnRatio: 0.1,
        columns: Variables.columnNames,
        rows: Variables.rowValues,
        showCreateButton: true,
        tdStyle: const TextStyle(fontSize: 20),
        showSaveIcon: true,
        borderColor: Colors.grey.shade300,
        onSubmitted: (value) {
          print(value);
        },
        onRowSaved: (value) {
          print(value);
        },
      ),
    );
  }
}
