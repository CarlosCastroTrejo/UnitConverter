import 'package:UnitConverter/screens/SelectCategory/iconCategory.dart';
import 'package:UnitConverter/screens/UnitConverter/unitConverter.dart';
import 'package:flutter/material.dart';
import '../../models/unit.dart';

class CategoryTile extends StatelessWidget {
  final String _iconPath;
  final String _name;
  final Color _color;

  CategoryTile(this._name, this._iconPath, this._color);

  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  void _navigateToConverter(BuildContext context, String title, Color color) {
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return UnitConverter(title, color, this._retrieveUnitList(title));
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 15.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(10 / 2),
            highlightColor: this._color,
            splashColor: this._color,
            onTap: () => _navigateToConverter(context, this._name, this._color),
            child: Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: IconCategory(
                    imagePath: this._iconPath,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Center(
                    child: Text(
                      this._name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
