import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_images.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

class PetThumbnail extends StatelessWidget {
  const PetThumbnail({
    Key? key,
  }) : super(key: key);
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
                    Row(
                      children: [
                        //* Title
                        Text(
                          "Titulo",
                          style: TextStyle(
                            color: Theme.of(context).backgroundColor,
                            fontFamily: AppFont.font,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3),

                    //* Description
                    AutoSizeText(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec augue id nisi fringilla sodales. Sed imperdiet erat quis tempor ultricies. Maecenas viverra egestas consequat. Morbi eu est purus. Suspendisse eleifend ligula quis augue consectetur mattis. Donec gravida tortor orci, at posuere nulla pulvinar ac. Sed tristique, sem at malesuada vehicula, velit orci rutrum libero, in auctor dolor ipsum quis dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Nullam consequat ut sem sed volutpat.',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontFamily: AppFont.font,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
