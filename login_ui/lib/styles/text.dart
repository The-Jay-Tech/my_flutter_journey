import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  final titleStyle = GoogleFonts.notoSans(
    fontSize: 55,
    fontWeight: FontWeight.w900,
    height: 1.2,
    color: Colors.indigo[900],
  );

  final subTitleStyle = GoogleFonts.inter(
    fontSize: 16,
    height: 1.2,
    // color: Colors.indigo[600],
    color: Colors.white,
  );
}
