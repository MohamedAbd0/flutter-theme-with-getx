// ignore_for_file: depend_on_referenced_packages, always_use_package_imports
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_with_getx/themes/controller.dart';
import 'helper/binding.dart';
import 'helper/shared_pref.dart';
import 'themes/themes.dart';
import 'view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefHelper.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        init: ThemeController(),
        builder: (controller) => GetMaterialApp(
              title: "Theme With Getx",
              debugShowCheckedModeBanner: false,
              initialBinding: Binding(),
              theme: Themes.light,
              darkTheme: Themes.dark,
              themeMode: controller.isDark ? ThemeMode.dark : ThemeMode.light,
              home: const HomeScreen(),
            ));
  }
}
