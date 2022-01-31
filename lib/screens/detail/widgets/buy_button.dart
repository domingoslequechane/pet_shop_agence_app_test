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
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              elevation: 24,
              title: const Text('Confirmação',
                  style: TextStyle(
                    color: Color(0xff222222),
                    fontSize: 22,
                    fontFamily: AppFont.font,
                    fontWeight: FontWeight.w600,
                  )),
              content: const Text('Deseja efectuar esta compra?',
                  style: TextStyle(
                    color: Color(0xff222222),
                    fontSize: 18,
                    fontFamily: AppFont.font,
                  )),
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
                    Navigator.of(context).pushReplacementNamed('/home');
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
