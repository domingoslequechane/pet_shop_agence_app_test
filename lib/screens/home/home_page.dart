import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/screens/home/widgets/motivation_widget.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:pet_shop_agence_app_test/global/widgets/user_widget.dart';

import '../../global/widgets/drower_list.dart';
import '../../global/widgets/header_drower.dart';
import 'widgets/pet_staggered_gridview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // void initState() {
  //   super.initState();

  //   WidgetsBinding.instance!.addPostFrameCallback((_) {
  //     Scaffold.of(context).showSnackBar(SnackBar(content: Text('Conteudo')));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: buildDower(),
      appBar: buildAppBar(context),
      body: buildHome(),
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

//* Home metod
Column buildHome() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      //* Motivation
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: MotivationWidget(),
      ),

      //* GridView
      Expanded(
        child: PetGridView(),
      ),
    ],
  );
}
