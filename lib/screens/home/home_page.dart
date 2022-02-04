import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/screens/home/widgets/body_content.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:pet_shop_agence_app_test/global/widgets/user_widget.dart';

import '../../global/widgets/drower_list.dart';
import '../../global/widgets/header_drower.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: buildDower(),
      appBar: buildAppBar(context),
      body: const BodyContent(),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                              Extracted Methods                             */
/* -------------------------------------------------------------------------- */

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
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(
            Icons.menu_rounded,
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
      'Página inicial',
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
