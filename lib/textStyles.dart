import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextStyle kmediumNameStyle = GoogleFonts.songMyung(
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  ),
);

final TextStyle kmediumTextStyle = GoogleFonts.songMyung(
  textStyle: TextStyle(
    color: Colors.white70,
    fontSize: 14.0,
  ),
);
final TextStyle ktitleTextStyle = GoogleFonts.alexBrush(
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  ),
);
TextStyle titleStyle = TextStyle(
  //Style for Input Headings
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: Color(0xffffffff),
);
BoxDecoration buttonContainerStyle(Color boxColor) {
  // Decoration method for button Container Style
  return BoxDecoration(
    color: boxColor,
    boxShadow: [
      BoxShadow(
        offset: Offset(0.00, 3.00),
        color: Color(0xff000000).withOpacity(0.16),
        blurRadius: 6,
      ),
    ],
    borderRadius: BorderRadius.circular(24.00),
  );
}

BoxDecoration decorat = BoxDecoration(
  // Decoration for text input fields Parent Container
  color: Color(0xffffffff),
  boxShadow: [
    BoxShadow(
      offset: Offset(0.00, 3.00),
      color: Color(0xff000000).withOpacity(0.16),
      blurRadius: 6,
    ),
  ],
  borderRadius: BorderRadius.circular(24.00),
);
TextStyle buttonTextStyle(Color textColor) {
  return TextStyle(
    // TextStyle for Button Text
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: textColor,
    shadows: [
      Shadow(
        offset: Offset(0.00, 3.00),
        color: Color(0xff000000).withOpacity(0.16),
        blurRadius: 6,
      ),
    ],
  );
}

TextStyle title = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: Color(0xffffffff),
);
TextTheme maintextthemeOfApp = TextTheme(
  headline1: GoogleFonts.openSans(
      fontSize: 95, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.openSans(
      fontSize: 59, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3: GoogleFonts.openSans(fontSize: 48, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.openSans(
      fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5: GoogleFonts.openSans(fontSize: 24, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.openSans(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.roboto(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.roboto(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.roboto(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.roboto(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.roboto(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
