import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

class BuyButton extends StatefulWidget {
  const BuyButton({Key? key}) : super(key: key);

  @override
  _BuyButtonState createState() => _BuyButtonState();
}

class _BuyButtonState extends State<BuyButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //* button container
      width: double.infinity,
      height: 60,

      //* Button
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: AppColors.principal,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {
          confirmationDialog(context);
        },

        //* Text button
        child: const Text(
          'Realizar compra',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: AppFont.font),
        ),
      ),
    );
  }
}

//* Confirmation dialog
Future<dynamic> confirmationDialog(BuildContext context) {
  Future<void> _showSnackBar() async {
    Timer(
      const Duration(seconds: 1),
      () {
        const snackBar = SnackBar(
          content: Text('Pet aquirido com sucesso!\nJa ja ele chega ate você'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }

  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      elevation: 24,
      title: const Text(
        'Confirmação',
        style: TextStyle(
          color: Color(0xff222222),
          fontSize: 22,
          fontFamily: AppFont.font,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: const Text(
        'Deseja ficar com este Pet?',
        style: TextStyle(
          color: Color(0xff222222),
          fontSize: 18,
          fontFamily: AppFont.font,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Não',
            style: TextStyle(
              color: Color(0xff222222),
              fontSize: 18,
              fontFamily: AppFont.font,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.of(context).pushReplacementNamed('/home');
            _showSnackBar();
          },
          child: const Text(
            'Sim',
            style: TextStyle(
              color: Color(0xffFF8A00),
              fontSize: 18,
              fontFamily: AppFont.font,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
