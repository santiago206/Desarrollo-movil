import 'package:counter_appv2/config/theme/app_theme.dart';
import 'package:counter_appv2/presentation/screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).theme(),
      title: 'CounterApp',
      home: LoginScreen(),
    );
  }
}
