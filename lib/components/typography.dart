import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal/components/color.dart';

TextStyle heroTextStyle = GoogleFonts.spaceGrotesk(
  textStyle: const TextStyle(
    fontSize: 54,
    height: 1.02,
    color: textPrimary,
    fontWeight: FontWeight.w700,
    letterSpacing: -1.6,
  ),
);

TextStyle headlineTextStyle = GoogleFonts.spaceGrotesk(
  textStyle: const TextStyle(
    fontSize: 34,
    height: 1.1,
    color: textPrimary,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.8,
  ),
);

TextStyle headlineSecondaryTextStyle = GoogleFonts.spaceGrotesk(
  textStyle: const TextStyle(
    fontSize: 24,
    height: 1.2,
    color: textPrimary,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.4,
  ),
);

TextStyle subtitleTextStyle = GoogleFonts.plusJakartaSans(
  textStyle: const TextStyle(
    fontSize: 15,
    height: 1.6,
    color: textSecondary,
    fontWeight: FontWeight.w500,
  ),
);

TextStyle bodyTextStyle = GoogleFonts.plusJakartaSans(
  textStyle: const TextStyle(
    fontSize: 15,
    height: 1.75,
    color: textPrimary,
    fontWeight: FontWeight.w400,
  ),
);

TextStyle buttonTextStyle = GoogleFonts.spaceGrotesk(
  textStyle: const TextStyle(
    fontSize: 14,
    color: textPrimary,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.3,
  ),
);

TextStyle eyebrowTextStyle = GoogleFonts.spaceGrotesk(
  textStyle: const TextStyle(
    fontSize: 12,
    color: accent,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.6,
  ),
);

TextStyle captionTextStyle = GoogleFonts.plusJakartaSans(
  textStyle: const TextStyle(
    fontSize: 13,
    height: 1.5,
    color: textSecondary,
    fontWeight: FontWeight.w500,
  ),
);
