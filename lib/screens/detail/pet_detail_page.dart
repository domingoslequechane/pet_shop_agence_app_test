import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/global/widgets/user_widget.dart';
import 'package:pet_shop_agence_app_test/model/pet.dart';
import 'package:pet_shop_agence_app_test/global/widgets/drower_list.dart';
import 'package:pet_shop_agence_app_test/global/widgets/header_drower.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

import 'widgets/buy_button.dart';
import 'widgets/google_map.dart';

class PetDetailPage extends StatefulWidget {
  const PetDetailPage({Key? key, required this.pet}) : super(key: key);

  final Pet pet;

  @override
  _PetDetailPageState createState() => _PetDetailPageState();
}

class _PetDetailPageState extends State<PetDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: buildDower(),
      appBar: buildAppBar(context),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 0),
        children: [
          //* Widgets
          const GoogleMap(),
          const SizedBox(height: 15),
          thumbNail(context),
          const SizedBox(height: 15),
          const BuyButton(),
        ],
      ),
    );
  }

  //* Extracted method
  Column thumbNail(BuildContext context) {
    return Column(
      children: [
        //* Thumbnail card
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            color: AppColors.normal,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              //* Pet image
              Container(
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.pet.image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              //* Pet description
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      widget.pet.title,
                      style: TextStyle(
                        color: Theme.of(context).backgroundColor,
                        fontFamily: AppFont.font,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3),

                    //* Description
                    AutoSizeText(
                      widget.pet.description,
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontFamily: AppFont.font,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
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
      'Descrição',
      style: TextStyle(
        color: AppColors.normal,
        fontFamily: AppFont.font,
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
