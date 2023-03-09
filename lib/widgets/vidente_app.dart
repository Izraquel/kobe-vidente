import 'package:flutter/material.dart';
import 'package:vidente_app/widgets/home.dart';

import '../controllers/tema_controller.dart';

class VidenteApp extends StatelessWidget {
  const VidenteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: TemaController.instancia,
      builder: (context, child) {
        return MaterialApp(
          title: 'Kobe Vidente',
          theme: TemaController.instancia.usarTemaEscuro
              ? ThemeData.dark()
              : ThemeData(
                  colorScheme: ColorScheme.fromSwatch(
                  primarySwatch: Colors.indigo,
                )),
          debugShowCheckedModeBanner: false,
          home: Home(),
        );
      },
    );
  }
}
