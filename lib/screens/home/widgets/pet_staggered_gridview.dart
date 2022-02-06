import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/data/pet_data.dart';
import 'package:pet_shop_agence_app_test/screens/home/widgets/pet_item.dart';

class PetGridView extends StatefulWidget {
  const PetGridView({Key? key}) : super(key: key);

  @override
  State<PetGridView> createState() => _PetGridViewState();
}

class _PetGridViewState extends State<PetGridView> {
  final pets = PetData.table;

  final ScrollController _scrollController = ScrollController();
  int currentMaxItem = 10;

  //* Lazy loading setting
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreItems();
      }
    });
  }

  //* Set state lazy new itens
  _getMoreItems() {
    setState(() {
      if (currentMaxItem + 10 <= pets.length) {
        currentMaxItem += 10;
      } else {
        currentMaxItem += (pets.length - currentMaxItem);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //* GridView builder
    return GridView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 25, top: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 18,
        crossAxisSpacing: 18,
      ),
      itemCount: currentMaxItem,
      itemBuilder: (context, int petIndex) => PetItem(
        pets[petIndex],
      ),
    );
  }
}
