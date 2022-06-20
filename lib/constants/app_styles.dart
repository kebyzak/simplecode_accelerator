import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppStyles {
  static const nameText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.nameColor,
  );

  static const descriptionText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.descriptionColor,
  );

  static const filterText = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.descriptionColor,
    fontFamily: 'Roboto',
  );

  static const aliveText = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.aliveColor,
    letterSpacing: 0.5,
  );

  static const deadText = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.deadColor,
    letterSpacing: 0.5,
  );

  static const hiddenText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.hiddenColor,
  );
}
