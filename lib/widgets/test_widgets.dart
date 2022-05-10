import 'package:flutter/material.dart';

class TextWidgets {
  static TextStyle smallGreyText() {
    return const TextStyle(color: Colors.black54, fontSize: 12.0);
  }

  static TextStyle middleBlackText() {
    return const TextStyle(color: Colors.black, fontSize: 22.0);
  }

  static TextStyle smallBlackText() {
    return const TextStyle(color: Colors.black, fontSize: 12.0);
  }

  static TextStyle middleWhiteText() {
    return const TextStyle(color: Colors.white, fontSize: 22.0);
  }

  static TextStyle smallWhiteText() {
    return const TextStyle(color: Colors.white, fontSize: 12.0);
  }

  static Divider shortDividers() {
    return const Divider(
        thickness: 2.0, indent: 35.0, endIndent: 35, color: Colors.black12);
  }
}
