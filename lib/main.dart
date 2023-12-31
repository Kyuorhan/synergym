import 'package:flutter/material.dart';
// import 'package:synergym/src/modules/home/home_page.dart';
import 'package:synergym/src/modules/splash/splash_page.dart';
import 'package:synergym/src/shared/themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
