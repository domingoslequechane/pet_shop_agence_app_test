import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_images.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(
        AppImages.logo,
        width: 30,
      ),
    );
  }
}
