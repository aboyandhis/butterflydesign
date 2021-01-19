import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDark = false;
  
  ThemeMode themeMode = ThemeMode.system;
  
  toggleThemeMode() {
    if (themeMode == ThemeMode.dark) {
      themeMode = ThemeMode.light;
      notifyListeners();
    } else {
      themeMode = ThemeMode.dark;
      notifyListeners();
    }
  }

  bool get isDark => _isDark;
  void toggleDark() {
    _isDark = !_isDark;
    notifyListeners();
  }
  // Serves as a temp dark color for dark text / bg
  static final Color darkColor = Colors.black87;
  static final Color lightColor = Colors.grey[50];
  static final Color primaryColor = Colors.purple[200];
  static final Color accentColor = Colors.yellow[300];

  ThemeData theme = ThemeData(
    primaryColor: Colors.purple,
    primaryTextTheme: GoogleFonts.montserratTextTheme(),
    accentColor: accentColor,
    appBarTheme: AppBarTheme(
      color: accentColor,
      backgroundColor: darkColor,
      centerTitle: true,
      actionsIconTheme: IconThemeData(color: accentColor),
    ),
  );
}
