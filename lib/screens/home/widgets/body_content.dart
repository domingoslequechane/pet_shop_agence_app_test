import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/screens/home/widgets/motivation_widget.dart';
import 'package:pet_shop_agence_app_test/screens/home/widgets/pet_staggered_gridview.dart';

// import 'package:s';

class BodyContent extends StatefulWidget {
  const BodyContent({Key? key}) : super(key: key);

  @override
  State<BodyContent> createState() => _BodyContentState();
}

class _BodyContentState extends State<BodyContent> {
  late bool _isLoading;
  @override
  void initState() {
    _isLoading = true;
    Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(
          () {
            _isLoading = false;
          },
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //* Motivation
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: MotivationWidget(),
          ),

          //* GridView
          Expanded(
            child: _isLoading ? const ProgressIndicator() : const PetGridView(),
          ),
        ],
      ),
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  const ProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
