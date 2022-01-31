import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';

Widget logoTitle() {
  return Text(
    'Pet Store',
    style: TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      color: AppColors.principal,
      fontFamily: 'Ubuntu',
    ),
  );
}
