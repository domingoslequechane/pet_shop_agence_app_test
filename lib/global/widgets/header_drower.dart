import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_images.dart';

class HeaderDrower extends StatefulWidget {
  const HeaderDrower({Key? key}) : super(key: key);

  @override
  _HeaderDrowerState createState() => _HeaderDrowerState();
}

class _HeaderDrowerState extends State<HeaderDrower> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //* Drower header card
      padding: const EdgeInsets.only(top: 25),
      width: double.infinity,
      color: Colors.white,
      height: 250,
      child: Column(
        children: [
          //* Image
          Image.asset(
            AppImages.logo,
            width: 235,
          ),
        ],
      ),
    );
  }
}
