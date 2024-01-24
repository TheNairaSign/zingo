import 'package:flutter/material.dart';

class KeyProvider extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _scaffoldKey2 = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
  GlobalKey<ScaffoldState> get scaffoldKey2 => _scaffoldKey2;

  void openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  void openDrawer2() {
    _scaffoldKey2.currentState?.openDrawer();
    notifyListeners();
  }
}
