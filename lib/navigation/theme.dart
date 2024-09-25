
import 'package:flutter/material.dart';

class theme {
  static const Color background = Color(0xFF29232E);
  static const Color yellow = Color(0xFFFFB200);
  static const Color grey = Color(0xFFABA5B0);

  static BoxDecoration get cardDecor => BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      color: const Color(0xFF655F6A),
      width: 1,
    ),
    color: const Color(0xFF332D38),
  );

  static TextStyle textStyle = const TextStyle(
    color: Color(0xFFFFFFFF),
    fontFamily: "IBMPlexSans",
    decoration: TextDecoration.none,
    decorationColor: Colors.transparent,
    overflow: TextOverflow.ellipsis,
  );
}