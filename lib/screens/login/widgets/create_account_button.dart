import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

Widget createAccountButton() {
  return TextButton(
    //* Click action
    onPressed: () {},

    //* Text
    child: Text(
      'Criar uma conta',
      style: TextStyle(
        color: AppColors.principal,
        fontFamily: AppFont.font,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
