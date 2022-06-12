// To parse this JSON data, do
//
//     final takeColumnName = takeColumnNameFromJson(jsonString);

import 'dart:convert';

List<TakeColumnName> takeColumnNameFromJson(String str) =>
    List<TakeColumnName>.from(
        json.decode(str).map((x) => TakeColumnName.fromJson(x)));

String takeColumnNameToJson(List<TakeColumnName> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TakeColumnName {
  TakeColumnName({
    required this.columnName,
  });

  final String columnName;

  factory TakeColumnName.fromJson(Map<String, dynamic> json) => TakeColumnName(
        columnName: json["column_name"],
      );

  Map<String, dynamic> toJson() => {
        "column_name": columnName,
      };
}
