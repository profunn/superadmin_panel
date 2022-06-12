import 'package:flutter/material.dart';
import 'package:superadmin_panel/utils/device_sizing.dart';

class Height extends StatelessWidget {
  double h;
  Height({Key? key, required this.h}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.sizeH * h,
    );
  }
}
