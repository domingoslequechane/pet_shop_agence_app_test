import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

import 'widgets/create_account_button.dart';
import 'widgets/facebook_login_button.dart';
import 'widgets/google_login_button.dart';
import 'widgets/login_button.dart';
import 'widgets/pass_recover_button.dart';
import 'widgets/password_input_field.dart';
import 'widgets/user_input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
      ),
      body: buildHome(context),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                              Extracted Methon                              */
/* -------------------------------------------------------------------------- */

//* Body method
Center buildHome(BuildContext context) {
  return Center(
    child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.only(left: 40, right: 40, bottom: 40),
      children: [
        Container(
          // color: Colors.black,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //* Text
              const Text(
                'Login',
                style: TextStyle(
                  fontFamily: AppFont.font,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff222222),
                ),
              ),
              const SizedBox(height: 20),

              //* Fields
              userInputField(),
              const SizedBox(height: 10),
              const passwordInputField(),

              //* Buttons
              passRecoverButton(), // Passoword recover button
              const SizedBox(height: 10),
              loginButton(context), // Login button
              const SizedBox(height: 10),

              //* Social login
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //* Facebook
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.6,
                    child: facebookLoginButton(), // Login with Facebook button
                  ),
                  const SizedBox(width: 10),

                  //* Google
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.6,
                    child:
                        googleLoginButton(context), // Login with Goole button
                  ),
                ],
              ),
              const SizedBox(height: 15),

              //* Create account
              createAccountButton(), // Create new account button
            ],
          ),
        ),
      ],
    ),
  );
}
