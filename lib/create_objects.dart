Map<String, dynamic> createColumnObject(CreateObjects data) =>
    data.createColumnObject();

class CreateObjects {
  final String title;
  final int index;
  final String key;
  CreateObjects({required this.title, required this.index, required this.key});

  Map<String, dynamic> createColumnObject() =>
      {"title": title, "index": index, "key": key};
}
