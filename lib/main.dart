import 'package:flutter/material.dart';
import 'package:landing_page_tfatws/interface/pages/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "O Falcão e o Soldado Invernal",
      theme: ThemeData(primarySwatch: Colors.red, fontFamily: 'B612'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
