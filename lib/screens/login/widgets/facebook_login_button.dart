import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

Widget facebookLoginButton() {
  return ElevatedButton.icon(
    //* Button style
    style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      minimumSize: const Size(0, 60),
      onPrimary: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),

    //* Click action
    onPressed: () {},

    //* Icon
    icon: const FaIcon(
      FontAwesomeIcons.facebook,
      size: 22,
    ),

    //* Text
    label: const Text(
      'Facebook',
      style: TextStyle(
        fontFamily: AppFont.font,
        fontSize: 16,
      ),
    ),
  );
}
