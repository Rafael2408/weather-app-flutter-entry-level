import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import './widgets/background_container.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Agrega const constructor

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: MaterialApp(
        title: 'Weather App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainScreen()
      ),
    );
  }
}
