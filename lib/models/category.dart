import 'package:flutter/material.dart';

class Category {
  final String iconPath;
  final String name;
  final Color color;

  Category(this.name, this.iconPath, this.color);

  static List<Category> fetchAll() {
    return [
      Category('Length', 'assets/icons/length.png', Colors.teal),
      Category('Area', 'assets/icons/area.png', Colors.orange),
      Category('Currency', 'assets/icons/currency.png', Colors.pinkAccent),
      Category('Digital Storage', 'assets/icons/digital_storage.png',
          Colors.blueAccent),
      Category('Mass', 'assets/icons/mass.png', Colors.yellow),
      Category('Power', 'assets/icons/power.png', Colors.greenAccent),
      Category('Time', 'assets/icons/time.png', Colors.purpleAccent),
      Category('Volume', 'assets/icons/volume.png', Colors.red),
    ];
  }
}
