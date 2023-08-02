import 'package:app/views/constants/themes.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _theme = Themes.lightTheme;

  ThemeData get theme => _theme;

  void setDark(){
    _theme = Themes.darkTheme;
    notifyListeners();
  }

  void setLight(){
    _theme = Themes.lightTheme;
    notifyListeners();
  }
}