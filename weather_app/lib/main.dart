import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/view/home/home.dart';
import 'package:weather_app/view_model/home_viewmodel.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}
