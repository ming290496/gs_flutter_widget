import 'package:flutter/material.dart';
import 'package:gs_flutter_widget/constants/gs_font_weight.dart';

class GSStyle {
  static TextStyle headerTitleStyle = TextStyle(
    color: Colors.black,
    fontWeight: GSFontWeight.semiBold,
    fontSize: 18,
    fontFamily: 'Inter',
  );

  static TextStyle contentTitleStyle = TextStyle(
    fontWeight: GSFontWeight.bold,
    fontFamily: 'Inter',
    fontSize: 14,
  );

  static TextStyle contentTitleWhiteWithShadowStyle =
      contentTitleStyle.copyWith(
    color: Colors.white,
    shadows: [GSStyle.textShadow],
  );

  static TextStyle contentSubTitleStyle = TextStyle(
    fontWeight: GSFontWeight.normal,
    color: Color(0xFF11243D).withOpacity(0.74),
    fontFamily: 'Inter',
    fontSize: 12,
  );

  static TextStyle contentSubTitleWhiteWithShadowStyle =
      contentSubTitleStyle.copyWith(
    color: Colors.white,
    shadows: [GSStyle.textShadow],
  );

  static TextStyle smallTextButtonStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
  );

  static Shadow textShadow = Shadow(
    blurRadius: 2.0,
    color: Colors.black,
    offset: Offset(1.0, 1.0),
  );
}
