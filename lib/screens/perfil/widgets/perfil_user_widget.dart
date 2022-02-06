import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_images.dart';

class UserWithoutDetector extends StatelessWidget {
  const UserWithoutDetector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //* User image pick
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 14, bottom: 14),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: AssetImage(AppImages.demoUserPicture),
          ),
        ),
      ),
    );
  }
}
