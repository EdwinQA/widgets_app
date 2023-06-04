import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.pink,
  Colors.indigo,
  Colors.purple,
  Colors.yellow,
];

class AppTheme {
  final int selectodColor;

  AppTheme({
    this.selectodColor = 0,
  })  : assert(selectodColor >= 0, 'El color seleccionado debe ser mayor a 0'),
        assert(selectodColor < colorList.length,
            'El color seleccionado debe ser menos a ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectodColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      ));
}
