

import 'package:flutter/material.dart';

const Color _customcolor = Color(0xFF5BDA35);

const List<Color> _colorThemes = [
  _customcolor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink

];

class AppTheme {

  final int selectedColor;

  AppTheme({this.selectedColor = 0})
  :assert(selectedColor >=0 && selectedColor < _colorThemes.length, 'El color debe ser desde 0 hasta ${_colorThemes.length - 1}');

ThemeData theme(){
  return ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: _colorThemes[selectedColor]
  );
}


}
