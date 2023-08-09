import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/* Start of Color Constants */

Color primaryTextColor = const Color(0xFF414C6B);
Color secondaryTextColor = const Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = const Color(0xff868686);
Color navigationColor = const Color(0xFF6751B5);
Color gradientStartColor = const Color(0xFF0050AC);
Color gradientEndColor = const Color(0xFF9354B9);

/* End of Color Constants */

// =========================== //

/* Start of Gradient Style */

LinearGradient linearGradiant = LinearGradient(
  colors: [gradientStartColor, gradientEndColor],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

/* End of Gradient Style */

// =========================== //

/* Start of Padding */

const double kPadding32 = 32.0;
const double kPadding24 = 24.0;
const double kPadding20 = 20.0;
const double kPadding16 = 16.0;
const double kPadding8 = 8.0;
const double kPadding4 = 4.0;

/* End of Padding */

// =========================== //

/* Start of Font */

final kMontserratBold = GoogleFonts.montserrat(
  fontWeight: FontWeight.w900,
  color: const Color(0xffffffff),
);

final kMontserratSemiBold = GoogleFonts.montserrat(
  fontWeight: FontWeight.w600,
);

final kMontserratMedium = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  color: const Color(0x7cdbf1ff),
);

final kMontserratRegular = GoogleFonts.montserrat(
  fontWeight: FontWeight.w400,
);

final kMontserratSmall = GoogleFonts.montserrat(
  fontWeight: FontWeight.w300,
);

/* End of Font */
