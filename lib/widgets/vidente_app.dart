import 'package:flutter/material.dart';
import 'package:vidente_app/widgets/home.dart';

class VidenteApp extends StatelessWidget {
  const VidenteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kobe Vidente',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
