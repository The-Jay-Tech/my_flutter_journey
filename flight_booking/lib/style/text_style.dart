import 'package:flight_booking/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  final titleStyle = GoogleFonts.robotoSlab(
    fontSize: 50,
    fontWeight: FontWeight.w600,
    height: 1.2,
    color: Colors.black,
  );

  final subStyle = GoogleFonts.satisfy(
    fontSize: 12,
    color: AppColor.grey,
  );

  final wordStyle = GoogleFonts.robotoSlab(
    fontSize: 35,
    fontWeight: FontWeight.w600,
    height: 1.1,
  );

  final cityStyle = GoogleFonts.robotoSlab(
    fontSize: 35,
    fontWeight: FontWeight.w600,
    height: 1.2,
    color: Colors.black,
  );
}
