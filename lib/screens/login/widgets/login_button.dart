import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

Widget loginButton(BuildContext context) {
  return ElevatedButton(
    //* Style
    style: ElevatedButton.styleFrom(
      primary: AppColors.principal,
      onPrimary: Colors.white,
      minimumSize: const Size(double.infinity, 60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),

    //* Click action
    onPressed: () {
      Navigator.of(context).pushReplacementNamed('/home');
    },

    //* Text
    child: const Text(
      'Entrar',
      style: TextStyle(
        fontFamily: AppFont.font,
        fontSize: 16,
      ),
    ),
  );
}
