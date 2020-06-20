import 'package:UnitConverter/screens/SelectCategory/categoryTile.dart';
import 'package:flutter/material.dart';
import '../../models/category.dart';
import '../../theme/style.dart';

class SelectCategory extends StatelessWidget {
  final List<Category> categories = Category.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Category'),
      ),
      body: Container(
        color: BackgroundColor,
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) =>
              _categoryTileBuilder(context, categories[index]),
        ),
      ),
    );
  }

  CategoryTile _categoryTileBuilder(BuildContext context, Category category) {
    return CategoryTile(category.name, category.iconPath, category.color);
  }
}
