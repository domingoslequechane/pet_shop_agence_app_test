import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

class MotivationWidget extends StatelessWidget {
  const MotivationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      //* Texts
      children: const [
        Text(
          'Amigos',
          style: TextStyle(
            fontSize: 20,
            fontFamily: AppFont.font,
            color: Color(0xff222222),
          ),
        ),
        Text(
          'Fazem bem!',
          style: TextStyle(
              color: Color(0xff222222),
              fontSize: 28,
              fontFamily: AppFont.font,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
