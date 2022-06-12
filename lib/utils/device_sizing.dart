import 'package:flutter/material.dart';

extension DeviceSizing on BuildContext {
  double get sizeH => MediaQuery.of(this).size.height / 1000;
  double get sizeW => MediaQuery.of(this).size.width / 1000;
}
