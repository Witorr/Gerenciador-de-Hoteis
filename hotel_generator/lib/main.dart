import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hotel_generator/core/constants/color_palatte.dart';
import 'package:hotel_generator/core/helpers/local_storage_helper.dart';
import 'package:hotel_generator/representation/screen/slpash_screen.dart';
import 'package:hotel_generator/routes.dart';

import 'core/helpers/size_config.dart';

void main() async {
  await Hive.initFlutter();
  await LocalStorageHelper.initLocalStorageHelper();
  runApp(const TravoApp());
}

class TravoApp extends StatelessWidget {
  const TravoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Guide - Gerenciador de Hóteis',
      theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
        scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
        backgroundColor: ColorPalette.backgroundScaffoldColor,
      ),
      routes: routes,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoutes,
      home: Builder(
        builder: (context) {
          SizeConfig.init(context);
          return SplashScreen();
        },
      ),
    );
      }
}
