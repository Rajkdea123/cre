import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension CustomTextExtensions on Text {

  Text fonttext({
    required String fontFamily,
    double fontSize = 14.0,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.white,
    TextAlign? alignment,
  }) {
    return Text(
      data ?? '',
      style: GoogleFonts.getFont(
        fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      textAlign: alignment ?? textAlign,
    );
  }
  Text font(TextStyle fontStyle) {
    return Text(
      data ?? '',
      style: fontStyle,
      textAlign: textAlign,
    );
  }
}
