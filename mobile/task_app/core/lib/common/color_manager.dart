import 'package:flutter/material.dart';

import 'extensions.dart';

class ColorManager {

  static Color primaryColor = HexColor.fromHex("#CC7626");

  //common colors
  static Color white= HexColor.fromHex("#FFFFFF");
  static Color transparent = white.withOpacity(0);

  //Text Colors
  static Color primaryTextColor = HexColor.fromHex("#000000").withOpacity(0.9);
  static Color secondaryTextColor = HexColor.fromHex("#000000").withOpacity(0.7);
  static Color whiteTextColor = HexColor.fromHex("#FFFFFF");
  static Color greyTextColor = HexColor.fromHex("#A1A1A1");
  static Color greenTextColor = HexColor.fromHex("#519A25");
  static Color redTextColor = HexColor.fromHex("#BE4646");
  static Color orangeTextColor = HexColor.fromHex("#CC7626");
  static Color darkTextColor = HexColor.fromHex("#222222");


  static Color darkDividerColor= HexColor.fromHex("#222222");


  // icon colors
  static const Color redIconColor = Color(0xFFBE4646);
  static const Color greenIconColor = Color(0xFF519A25);

  //button colors
  static Color navbarButtonColor = primaryTextColor.withOpacity(0.8);
}
