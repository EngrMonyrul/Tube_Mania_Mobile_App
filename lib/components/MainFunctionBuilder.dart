import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/screens/splashScreen.dart';
import '../provider/1.2.1. ModeChanagerProvider.dart';
import '../screens/homeScreen.dart';

Builder buildBuilder() {
  return Builder(
    builder: (BuildContext context) {
      return Consumer<ModeChanger>(
        builder: (context, value, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'AppName',
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                appBarTheme: const AppBarTheme(
                  color: Colors.grey,
                )),
            themeMode: value.currentMode,
            theme: ThemeData(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              appBarTheme: const AppBarTheme(color: Colors.indigo),
              fontFamily: 'inter',
            ),
            home: const SplashScreen(),
          );
        },
      );
    },
  );
}
