import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

Widget userInputField() {
  return const TextField(
    //* Propriety
    keyboardType: TextInputType.text,

    //* Decoration
    decoration: InputDecoration(
      fillColor: Colors.black,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),

      //* Text
      labelText: 'Usuário',
      labelStyle: TextStyle(
        fontFamily: AppFont.font,
        fontSize: 16,
      ),
      hintText: 'Digite o seu nome de usuário',
      hintStyle: TextStyle(
        fontFamily: AppFont.font,
      ),
    ),
  );
}
