import 'package:flutter/material.dart';

class MainViewModel extends ChangeNotifier {
  int count = 0;
  bool isLoading = false;

  Future<void> countUp() async {
    isLoading = true;
    notifyListeners();
    //렌더링
    await Future.delayed(const Duration(seconds: 1));
    count++;
    isLoading = false;
    notifyListeners();
  }
}
