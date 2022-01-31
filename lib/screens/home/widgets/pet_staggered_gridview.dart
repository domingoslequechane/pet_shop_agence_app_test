import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/model/pet.dart';

import 'pet_item.dart';

class PetGridView extends StatelessWidget {
  PetGridView({Key? key}) : super(key: key);

  final petList = Pet.generatePets();

  @override
  Widget build(BuildContext context) {
    //* GridView builder
    return GridView.builder(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 25, top: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
      ),
      itemCount: petList.length,
      itemBuilder: (context, index) => PetItem(petList[index]),
    );
  }
}
