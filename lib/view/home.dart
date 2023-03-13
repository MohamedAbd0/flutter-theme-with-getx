import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_with_getx/themes/controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          GetBuilder<ThemeController>(
            builder: (controller) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.light_mode),
                  Switch(
                    activeColor: Colors.amber,
                    value: controller.isDark,
                    onChanged: (value) {
                      controller.changeTheme(value);
                    },
                  ),
                  const Icon(Icons.dark_mode),
                ],
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          "Mohamed Abdo",
          textScaleFactor: 3,
        ),
      ),
    );
  }
}
