// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

class passwordInputField extends StatefulWidget {
  const passwordInputField({Key? key}) : super(key: key);

  @override
  _passwordInputFieldState createState() => _passwordInputFieldState();
}

class _passwordInputFieldState extends State<passwordInputField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      //* Decoration
      decoration: InputDecoration(
        filled: true,

        //* Icons
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: const Icon(Icons.remove_red_eye),
        ),

        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),

        //* Text
        labelText: 'Senha',
        labelStyle: const TextStyle(
          fontFamily: AppFont.font,
          fontSize: 16,
        ),
        hintText: 'Digite a sua senha',
        hintStyle: const TextStyle(
          fontFamily: AppFont.font,
          fontSize: 16,
        ),
      ),

      //* Propriety
      obscureText: obscureText,
      keyboardType: TextInputType.text,
    );
  }
}
