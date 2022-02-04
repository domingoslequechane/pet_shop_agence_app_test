import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/model/pet.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_images.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

class PetThumbnail extends StatelessWidget {
  const PetThumbnail({Key? key, required this.pet}) : super(key: key);

  final Pet pet;

  @override
  Widget build(BuildContext context) {
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
                  image: const DecorationImage(
                    image: AssetImage(AppImages.pet02),
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
                      pet.title,
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
                      pet.description,
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
