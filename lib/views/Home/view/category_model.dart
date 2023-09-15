import 'item_model.dart';

class CategoryModel {
  final String id;
  final String name;
  final List<ItemModel> items;

  CategoryModel({
    required this.id,
    required this.name,
    required this.items,
  });

  static CategoryModel fromJson(Map<String, dynamic> categoryMap) {
    return CategoryModel(
      id: categoryMap['id'],
      name: categoryMap['name'],
      items: categoryMap['items'].map((i) => ItemModel.fromJson(i)).toList(),
    );
  }
}
