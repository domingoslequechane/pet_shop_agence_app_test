// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:pet_shop_agence_app_test/provider/google_sign_in.dart';

class DrowerList extends StatefulWidget {
  const DrowerList({Key? key}) : super(key: key);

  @override
  _DrowerListState createState() => _DrowerListState();
}

class _DrowerListState extends State<DrowerList> {
  //* Selected page variable
  var currentPage = drawerSection.perfil;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        // Menu
        children: [
          //* Build drower menu
          menuItem(1, "Perfil", Icons.person, "/perfil", ""),
          menuItem(2, "Meus Produtos", Icons.shopping_cart_rounded,
              "/myproducts", ""),
          menuItem(3, "Configurações", Icons.settings, "/settings", ""),
          menuItem(4, "Logout", Icons.keyboard_return_rounded, "/login", ""),
        ],
      ),
    );
  }

  // Widget menuItem2(int id) {
  //   return Material(
  //     child: InkWell(
  //       onTap: () {
  //         final provider =
  //             Provider.of<GooleSignInProvider>(context, listen: false);
  //         provider.googleLogin();
  //       },
  //     ),
  //   );
  // }

  //* Drower menu constructor
  Widget menuItem(
      int id, String title, IconData icon, String page, String closeCon) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('$page');
          final provider =
              Provider.of<GooleSignInProvider>(context, listen: false);

          //* If the id selected
          if (id == 4) {
            provider.logout();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(10),

          //* Customise section
          child: Row(
            children: [
              //* Section icon
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: AppColors.normal,
                ),
              ),

              //* Section title
              Expanded(
                flex: 7,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Ubuntu',
                      color: AppColors.normal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//* Drower menu section
enum drawerSection {
  perfil,
  myproducts,
  settings,
  logout,
}
