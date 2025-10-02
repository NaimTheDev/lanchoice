import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'torque_theme_extension.dart';

class AppTheme {
  // Light theme colors
  static const Color _primaryTeal = Color(0xFF10B9B9);
  static const Color _accentTeal = Color(0xFF1DC4C4);
  static const Color _destructiveRed = Color(0xFFEA4335);

  // Dark theme colors
  static const Color _primaryCyanDark = Color(0xFF3BE1E1);
  static const Color _accentCyanDark = Color(0xFF27D4D4);
  static const Color _destructiveRedDark = Color(0xFFA42017);

  static ThemeData get lightTheme {
    final colorScheme = ColorScheme.light(
      // Main colors
      primary: _primaryTeal,
      onPrimary: const Color(0xFFF4FFFF), // primary-foreground
      secondary: const Color(0xFFF0F0F0), // secondary
      onSecondary: const Color(0xFF181B1B), // secondary-foreground
      // Surface colors
      surface: const Color(0xFFFFFFFF), // background
      onSurface: const Color(0xFF181B1B), // foreground
      surfaceVariant: const Color(0xFFF5F5F5), // muted
      onSurfaceVariant: const Color(0xFF656C6C), // muted-foreground
      // Error colors
      error: _destructiveRed,
      onError: const Color(0xFFFAFAFA), // destructive-foreground
      // Other colors
      outline: const Color(0xFFE6E6E6), // border
      shadow: const Color(0xFF000000),
      inverseSurface: const Color(0xFF181B1B),
      onInverseSurface: const Color(0xFFFFFFFF),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: GoogleFonts.ptSansTextTheme(),
      extensions: const [TorqueThemeExtension.light],

      // Card Theme
      cardTheme: CardThemeData(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: const Color(0xFFFAFAFA), // card
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: GoogleFonts.ptSans(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: colorScheme.onSurface,
        ),
      ),

      // Bottom Navigation Theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.surface,
        selectedItemColor: _primaryTeal,
        unselectedItemColor: colorScheme.onSurface.withOpacity(0.6),
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _primaryTeal,
          foregroundColor: const Color(0xFFF4FFFF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: GoogleFonts.ptSans(fontWeight: FontWeight.w600),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFFEBEBEB), // input
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE6E6E6)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _primaryTeal, width: 2),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    final colorScheme = ColorScheme.dark(
      // Main colors
      primary: _primaryCyanDark,
      onPrimary: const Color(0xFF181B1B), // primary-foreground
      secondary: const Color(0xFF1D2121), // secondary
      onSecondary: const Color(0xFFFAFCFC), // secondary-foreground
      // Surface colors
      surface: const Color(0xFF090B0B), // background
      onSurface: const Color(0xFFFAFCFC), // foreground
      surfaceVariant: const Color(0xFF1D2121), // muted
      onSurfaceVariant: const Color(0xFF9DA3A3), // muted-foreground
      // Error colors
      error: _destructiveRedDark,
      onError: const Color(0xFFFAFAFA), // destructive-foreground
      // Other colors
      outline: const Color(0xFF252929), // border
      shadow: const Color(0xFF000000),
      inverseSurface: const Color(0xFFFAFCFC),
      onInverseSurface: const Color(0xFF090B0B),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: GoogleFonts.ptSansTextTheme(ThemeData.dark().textTheme),
      extensions: const [TorqueThemeExtension.dark],

      // Card Theme
      cardTheme: CardThemeData(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: const Color(0xFF131616), // card dark
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: GoogleFonts.ptSans(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: colorScheme.onSurface,
        ),
      ),

      // Bottom Navigation Theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.surface,
        selectedItemColor: _primaryCyanDark,
        unselectedItemColor: colorScheme.onSurface.withOpacity(0.6),
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _primaryCyanDark,
          foregroundColor: const Color(0xFF181B1B),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: GoogleFonts.ptSans(fontWeight: FontWeight.w600),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF252929), // input dark
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFF252929)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _primaryCyanDark, width: 2),
        ),
      ),
    );
  }
}
