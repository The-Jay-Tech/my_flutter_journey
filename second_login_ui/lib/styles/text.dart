import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  final titleStyle = GoogleFonts.notoSans(
    fontSize: 40,
    color: Colors.white,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );
  final subStyle = GoogleFonts.notoSans(
    fontSize: 15,
    color: Colors.grey,
    height: 1.2,
  );
  final loginFont = GoogleFonts.notoSans(
    fontSize: 20,
    color: Colors.indigo[900],
    height: 1.2,
    fontWeight: FontWeight.w700,
  );
  final forgetPass = GoogleFonts.notoSans(
    fontSize: 15,
    color: Colors.teal[300],
    height:1.2,
    fontWeight: FontWeight.w500,
  );
  final movieFont = GoogleFonts.notoSans(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
}
