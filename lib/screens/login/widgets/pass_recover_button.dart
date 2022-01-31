import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

Widget passRecoverButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      //* Build button
      TextButton(
        //* Click action
        onPressed: () {},

        //* Text
        child: Text(
          'Esqueci senha',
          style: TextStyle(
            color: AppColors.principal,
            fontFamily: AppFont.font,
            fontSize: 16,
          ),
        ),
      ),
    ],
  );
}
