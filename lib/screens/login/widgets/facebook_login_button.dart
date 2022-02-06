import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_shop_agence_app_test/screens/login/login_page.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookLoginButton extends StatefulWidget {
  const FacebookLoginButton({Key? key}) : super(key: key);

  @override
  _FacebookLoginButtonState createState() => _FacebookLoginButtonState();
}

class _FacebookLoginButtonState extends State<FacebookLoginButton> {
  //* Facebook Login
  Future<void> _login() async {
    try {
      final result =
          await FacebookAuth.i.login(permissions: ['public_profile', 'email']);

      switch (result.status) {
        case LoginStatus.operationInProgress:
          const CircularProgressIndicator();
          break;

        case LoginStatus.success:
          Navigator.of(context).pushReplacementNamed('/home');
          break;

        case LoginStatus.cancelled:
          const LoginPage();
          break;

        case LoginStatus.failed:
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              elevation: 24,
              title: const Text(
                'Erro',
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 22,
                  fontFamily: AppFont.font,
                  fontWeight: FontWeight.w600,
                ),
              ),
              content: const Text(
                '🙁 Ocorreu algum Erro durante a autenticação!',
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 18,
                  fontFamily: AppFont.font,
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Ok',
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
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
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
      onPressed: () {
        _login();
      },

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
}
