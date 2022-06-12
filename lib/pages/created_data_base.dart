import 'package:editable/editable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        columns: cdc.newColumnNames,
        rows: cdc.rows_values,
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
