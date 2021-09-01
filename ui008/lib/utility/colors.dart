import 'package:flutter/material.dart';

class MyColors {
  static Color? INACTIVE_MENU_COLOR = Colors.blueGrey[200];
  static Color? TEXT_COLOR = Colors.black87;
  static Color? CARD_BACKGROUND_COLOR = Colors.yellow[400];
  static Color? ACCENT_COLOR = Colors.blue[300];
  static Color? COLOR_WHITE = Colors.white;

  static Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return ACCENT_COLOR as Color;
    }
    return CARD_BACKGROUND_COLOR as Color;
  }
}
