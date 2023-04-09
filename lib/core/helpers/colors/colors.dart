import 'package:flutter/material.dart';

class AppColors {
  Color get redError => const Color(0xFFEF5944);
  Color get yellowAlert => const Color(0xFFF59E0B);
  Color get greenSuccess => const Color(0xFF2AD168);
  Color get blueInfo => const Color(0xFF0dcaf0);

  Color get primaryColor => const Color(0xFF006AFF); //0d6efd
  Color get primaryColorDark => const Color(0xFF006AFF); //0d6efd
  Color get primaryColorLight => const Color(0xFF006AFF); //0d6efd
  Color get secondaryColor => const Color(0xFFff6900); // #ff6900 ou #fcb900
  Color get tertiaryColor => const Color(0xFF00d084);

  Color get primaryWithOpacity => Color(0x520179F1);

  Color get lightBackground =>
      const Color(0xFFD5DAE1); // Colocar uma cor mais branca aqui
  Color get darkBackgroundOne => const Color(0xFF282A2D);
  Color get darkBackgroundTwo => const Color(0xFF404040);

  Color get lightTypograph => const Color(0xFFb0b2b3);
  Color get darkTypograph => const Color(0xFF212121);

  Color get inactiveComponent => const Color(0xFFB2B2B2);

  Color get light => const Color(0xFFD5DAE1);
  Color get darkWhite => const Color(0xFFCCCCCC);
  Color get lightGrey => const Color(0xFF999999);

  Color get almostLight => const Color(0xFFeeeeee);
  Color get almostDark => const Color(0xFF111111);

  Color get dark => const Color(0xFF2A3342);
  Color get lightDark => const Color(0xFF333333);
  Color get darkGrey => const Color(0xFF555555);

  Color get shadedWhite => const Color(0xFFdddddd);
  Color get shadedGrey => const Color(0xFF666666);

// #282A2D
// #1B1D20
// #B2B2B2
// #9C9C9C
// #404040

  Color get customContrastColor => Colors.red.shade700;

  Color get customTitle => const Color(0xFF212121);
  Color get customDarkTypography => const Color(0xFF212121);
  Color get customLightTypography => const Color(0xFFFFFFFF);

  Color get customBlue => const Color(0xFF006AFF);
  Color get customLightBlue => const Color.fromARGB(83, 1, 121, 241);

  Color get customGrey => const Color(0xFFDADADA);
  Color get customDarkGrey => const Color(0xFF6C6C6C);
  Color get customLightGrey => const Color(0xFFF8FAFC);

  Color get customBackground => const Color(0xFFFFFFFF);
}
