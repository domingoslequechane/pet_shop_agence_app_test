import 'package:flutter/material.dart';
import 'package:pet_shop_agence_app_test/screens/error/erro_page.dart';
import 'package:pet_shop_agence_app_test/screens/home/home_page.dart';
import 'package:pet_shop_agence_app_test/screens/login/login_page.dart';
import 'package:pet_shop_agence_app_test/screens/perfil/perfil_page.dart';
import 'package:pet_shop_agence_app_test/screens/product/my_product_page.dart';
import 'package:pet_shop_agence_app_test/screens/setting/setting_page.dart';
import 'package:pet_shop_agence_app_test/screens/splash/splash_page.dart';
import 'package:pet_shop_agence_app_test/shared/theme/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:pet_shop_agence_app_test/provider/google_sign_in.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GooleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme:
                Theme.of(context).textTheme.apply(bodyColor: AppColors.normal),
            backgroundColor: Colors.white,
            primaryColor: AppColors.normal,
          ),
          // home: const HomePage(),
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => const SplashPage(),
            '/login': (context) => const LoginPage(),
            '/home': (context) => const HomePage(),
            '/perfil': (context) => const PerfilPage(),
            '/myproducts': (context) => const MyProductPage(),
            '/settings': (context) => const SettingPage(),
            '/validation': (context) => const ErrorPage(),
          },
        ),
      );
}
