import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superadmin_panel/controllers/http_request_controller.dart';
import 'package:superadmin_panel/pages/created_data_base.dart';

import '../controllers/create_database_controller.dart';

class Starter extends StatelessWidget {
  Starter({Key? key}) : super(key: key);
  final cdc = Get.put(CreateDatabaseController());
  final hrc = Get.put(HttpRequestController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                child: const Text('Create Super-Admin Panel'),
                onPressed: () async {
                  await hrc.fetchColumnNames('added_news');
                  await cdc.addColumnNamesToList();
                  await hrc.fetchTableValues('added_news');
                  /* await cdc.addRowToList(); */
                }),
            TextButton(
                child: const Text('Go to Super-Admin Panel'),
                onPressed: () => Get.to(() => CreatedDataBase()))
          ],
        ),
      ),
    );
  }
}
