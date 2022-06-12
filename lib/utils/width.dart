import 'package:flutter/material.dart';
import 'package:superadmin_panel/utils/device_sizing.dart';

class Width extends StatelessWidget {
  double w;
  Width({Key? key, required this.w}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.sizeW * w,
    );
  }
}
