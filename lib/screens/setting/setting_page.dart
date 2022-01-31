import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/global/widgets/drower_list.dart';
import 'package:pet_shop_agence_app_test/global/widgets/header_drower.dart';
import 'package:pet_shop_agence_app_test/global/widgets/user_widget.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDower(),
      appBar: buildAppBar(context),
      body: const Center(
        child: Text(
          'Configurações',
          style: TextStyle(
            fontFamily: AppFont.font,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

//* Drower
Drawer buildDower() {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: const [
          HeaderDrower(),
          DrowerList(),
        ],
      ),
    ),
  );
}

//* AppBar method
AppBar buildAppBar(BuildContext context) {
  return AppBar(
    //* Customized drower
    leading: Builder(
      builder: (context) {
        return IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.normal,
          ),
        );
      },
    ),

    //* AppBar custom
    backgroundColor: Theme.of(context).backgroundColor,
    elevation: 0,
    centerTitle: true,
    title: Text(
      'Configurações',
      style: TextStyle(
        color: AppColors.normal,
        fontFamily: 'Ubuntu',
        fontWeight: FontWeight.bold,
        // fontSize: 25,
      ),
    ),

    //* User icon action
    actions: const [
      User(),
    ],
  );
}
