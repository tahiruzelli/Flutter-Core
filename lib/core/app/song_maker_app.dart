import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:songmaker/core/build_configs/build_config_manager.dart';
import '../consts/colors/colors.dart';
import '../logger/logger.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';

class SocientaSitesApp extends StatelessWidget {
  const SocientaSitesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['i18n'];
    logPrint(config.appTitle);
    return MaterialApp(
      title: config.appTitle,
      localizationsDelegates: [
        // delegate from flutter_localization
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // delegate from localization package.
        LocalJsonLocalization.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ar', 'SA'),
      ],
      theme: ThemeData(
        fontFamily: 'DMSans',
        primaryColor: AppColors.primaryColor,
        secondaryHeaderColor: AppColors.secondaryColor,
      ),
      debugShowCheckedModeBanner: (config is DeviceGestureSettings),
      routes: const {
        // SplashPage.route: (context) => SplashPage(),,
      },
      // initialRoute: SplashPage.route,
    );
  }
}
