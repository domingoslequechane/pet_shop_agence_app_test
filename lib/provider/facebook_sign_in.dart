import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/screens/login/login_page.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookLoginAuth extends StatefulWidget {
  const FacebookLoginAuth({Key? key}) : super(key: key);

  @override
  _FacebookLoginAuthState createState() => _FacebookLoginAuthState();
}

class _FacebookLoginAuthState extends State<FacebookLoginAuth> {
  // static final FacebookLoginAuth facebookLogIn = FacebookLoginAuth();

  // Future<void> _login() async {
  //   try {
  //     final FacebookLoginAuth result =
  //         await facebookLogIn.logIn(['public_profile', 'email']);

  //     switch (result.status) {
  //       case (FacebookLoginStatus.loggedIn):
  //         Navigator.of(context).pushReplacementNamed('/home');

  //         break;

  //       case FacebookLoginStatus.cancelledByUser:
  //         const LoginPage();
  //         break;

  //       case FacebookLoginStatus.error:
  //         showDialog(
  //           context: context,
  //           builder: (BuildContext context) => AlertDialog(
  //             elevation: 24,
  //             title: const Text(
  //               'Erro',
  //               style: TextStyle(
  //                 color: Color(0xff222222),
  //                 fontSize: 22,
  //                 fontFamily: AppFont.font,
  //                 fontWeight: FontWeight.w600,
  //               ),
  //             ),
  //             content:
  //                 const Text('🙁 Ocorreu algum Erro durante a autenticação!',
  //                     style: TextStyle(
  //                       color: Color(0xff222222),
  //                       fontSize: 18,
  //                       fontFamily: AppFont.font,
  //                     )),
  //             actions: [
  //               TextButton(
  //                 onPressed: () {
  //                   // Navigator.pop(context);
  //                   Navigator.pop(context);
  //                 },
  //                 child: const Text(
  //                   'Ok',
  //                   style: TextStyle(
  //                     color: Color(0xffFF8A00),
  //                     fontSize: 18,
  //                     fontFamily: AppFont.font,
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // Future _logOut() async {
  //   try {
  //     await facebookLogIn.logOut();
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
