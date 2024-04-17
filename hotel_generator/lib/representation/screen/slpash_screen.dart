import 'package:flutter/material.dart';
import 'package:hotel_generator/core/helpers/asset_helper.dart';
import 'package:hotel_generator/core/helpers/image_helper.dart';
import 'package:hotel_generator/core/helpers/local_storage_helper.dart';
import 'package:hotel_generator/representation/screen/intro_screen.dart';
import 'package:hotel_generator/representation/screen/main_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _routeToIntroScreen();
  }

  void _routeToIntroScreen() async {
    final ignoreIntro = LocalStorageHelper.getValue('ignoreIntro') as bool?;
    await Future.delayed(Duration(milliseconds: 1000));
    if (ignoreIntro ?? false) {
      Navigator.of(context).pushNamed(MainApp.routeName);
    } else {
      LocalStorageHelper.setValue('ignoreIntro', true);
      Navigator.of(context).pushNamed(IntroScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetHelper.backgroundSplash,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned.fill(
          child: ImageHelper.loadFromAsset(
            AssetHelper.circleSplash,
          ),
        ),
      ],
    );
  }
}
