import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const AutoMaxApp());
}

class AutoMaxApp extends StatelessWidget {
  const AutoMaxApp({super.key});

  static const Color primary = Color(0xFF0D2B45);
  static const Color accent = Color(0xFFE63946);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AutoMax',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          primary: primary,
          secondary: accent,
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xFFF4F6F8),
        appBarTheme: const AppBarTheme(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          centerTitle: false,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
