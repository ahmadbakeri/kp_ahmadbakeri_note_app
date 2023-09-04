import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'route/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Note Apps',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 33, 33, 33),
        appBarTheme:
            const AppBarTheme(backgroundColor: Color.fromARGB(255, 33, 33, 33)),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: routes,
    );
  }
}
