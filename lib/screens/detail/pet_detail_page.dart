import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/global/widgets/user_widget.dart';
import 'package:pet_shop_agence_app_test/model/pet.dart';
import 'package:pet_shop_agence_app_test/screens/detail/widgets/thumbnail.dart';
import 'package:pet_shop_agence_app_test/global/widgets/drower_list.dart';
import 'package:pet_shop_agence_app_test/global/widgets/header_drower.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';

import 'widgets/buy_button.dart';
import 'widgets/google_map.dart';

class PetDetailPage extends StatefulWidget {
  const PetDetailPage({Key? key, required String pet}) : super(key: key);

  @override
  _PetDetailPageState createState() => _PetDetailPageState();
}

class _PetDetailPageState extends State<PetDetailPage> {
  late final Pet pet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: buildDower(),
      appBar: buildAppBar(context),
      body: buildHome(context),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                              Extracted Methods                             */
/* -------------------------------------------------------------------------- */

//* Drawer
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
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: AppColors.normal,
      ),
    ),

    //* AppBar custom
    backgroundColor: Theme.of(context).backgroundColor,
    elevation: 0,
    centerTitle: true,
    title: Text(
      'Detalhes',
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
ListView buildHome(BuildContext context) {
  return ListView(
    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 0),
    children: const [
      //* Widgets
      GoogleMap(),
      SizedBox(height: 15),
      PetThumbnail(),
      SizedBox(height: 15),
      BuyButton(),
    ],
  );
}
