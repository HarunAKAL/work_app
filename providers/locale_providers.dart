import 'package:flutter/material.dart';

class LocaleProvider with ChangeNotifier {
  Locale _current = const Locale('tr', 'TR'); // Varsayılan olarak Türkçe
  
  Locale get current => _current; // current özelliği için bir getter tanımlandı

  void setTurkish() {
    _current = const Locale('tr', 'TR');
    notifyListeners();
  }

  void setEnglish() {
    _current = const Locale('en', 'US');
    notifyListeners();
  }
}
