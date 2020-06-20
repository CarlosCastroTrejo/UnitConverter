import 'package:flutter/material.dart';

class IconCategory extends StatelessWidget {
  final String imagePath;

  IconCategory({@required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
