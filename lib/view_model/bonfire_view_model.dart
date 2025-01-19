import 'package:flutter/material.dart';

import '../model/bonfire_model.dart';

class BonfireViewModel extends ChangeNotifier {

  final List<PollOption> pollOptions = [
    PollOption(option: 'The peace in the early mornings'),
    PollOption(option: 'The magical golden hours'),
    PollOption(option: 'Wind-down time after dinners'),
    PollOption(option: 'The serenity past midnight'),
  ];

  void selectOption(int index) {
    for (int i = 0; i < pollOptions.length; i++) {
      pollOptions[i] = PollOption(
        option: pollOptions[i].option,
        isSelected: i == index,
      );
    }
    notifyListeners();
  }
}