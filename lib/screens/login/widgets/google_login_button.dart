import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_shop_agence_app_test/provider/google_sign_in.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';
import 'package:provider/provider.dart';

Widget googleLoginButton(BuildContext context) {
  return ElevatedButton.icon(
    //* Style
    style: ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      minimumSize: const Size(0, 60),
      primary: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),

    //* Click action
    onPressed: () async {
      final provider = Provider.of<GooleSignInProvider>(context, listen: false);

      await provider.googleLogin();

      Navigator.of(context).pushNamed('/validation');
    },

    //* Icon
    icon: const FaIcon(
      FontAwesomeIcons.google,
      size: 20,
    ),
    //* Text
    label: const Text(
      'Google',
      style: TextStyle(
        fontFamily: AppFont.font,
        fontSize: 16,
      ),
    ),
  );
}
