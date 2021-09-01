import 'package:flutter/material.dart';

class MyLengths {
  static const BUTTON_PADDING = 22.0;
  static EdgeInsetsGeometry getPaddingButton(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };

    if (states.any(interactiveStates.contains)) {
      return EdgeInsets.all(BUTTON_PADDING);
    }

    return EdgeInsets.all(BUTTON_PADDING);
  }
}
