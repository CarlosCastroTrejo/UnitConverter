import 'package:flutter/material.dart';
import '../../models/unit.dart';

class UnitConverter extends StatefulWidget {
  UnitConverter(this._title, this._color, this.units, {Key key})
      : super(key: key);

  final String _title;
  final Color _color;

  final List<Unit> units;

  @override
  _UnitConverterState createState() => _UnitConverterState();
}

class _UnitConverterState extends State<UnitConverter> {
  List<Container> unitWidgets() {
    return widget.units.map((Unit unit) {
      return Container(
        color: widget._color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
            ),
            Text(
              'Conversion: ${unit.conversion}',
            ),
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        centerTitle: true,
        title: Text(
          widget._title,
        ),
        backgroundColor: widget._color,
      ),
      body: ListView(
        children: unitWidgets(),
      ),
    );
  }
}
