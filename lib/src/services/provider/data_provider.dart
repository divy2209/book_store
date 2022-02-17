import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  late int index;
  bool unFocus = true;

  void genreIndex(int index){
    this.index = index;
  }

  void changeFocus(){
    unFocus = !unFocus;
    notifyListeners();
  }
}