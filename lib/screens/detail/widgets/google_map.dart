import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:pet_shop_agence_app_test/shared/theme/font_.dart';

class GoogleMap extends StatefulWidget {
  const GoogleMap({Key? key}) : super(key: key);

  @override
  _GoogleMapState createState() => _GoogleMapState();
}

class _GoogleMapState extends State<GoogleMap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //* Map card
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.normal, borderRadius: BorderRadius.circular(10)),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / (1 / 3),
      child: Text(
        'Google Map',
        style: TextStyle(
          color: Theme.of(context).backgroundColor,
          fontSize: 30,
          fontFamily: AppFont.font,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
