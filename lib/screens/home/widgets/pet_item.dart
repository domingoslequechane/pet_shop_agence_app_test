import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/model/pet.dart';
import 'package:pet_shop_agence_app_test/screens/detail/pet_detail_page.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

class PetItem extends StatefulWidget {
  final Pet pet;
  const PetItem(this.pet, {Key? key}) : super(key: key);

  @override
  State<PetItem> createState() => _PetItemState();
}

class _PetItemState extends State<PetItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //* Click action
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PetDetailPage(pet: widget.pet),
          ),
        );
      },

      //* Build content
      child: Container(
        alignment: Alignment.bottomLeft,

        //* Item image
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(widget.pet.image),
            fit: BoxFit.cover,
          ),
        ),

        //* Item title
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.pet.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: AppFont.font,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
