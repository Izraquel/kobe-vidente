import 'package:flutter/material.dart';

class TemaController extends ChangeNotifier {
  late bool usarTemaEscuro;
  static TemaController instancia = new TemaController();

  TemaController() {
    usarTemaEscuro = false;
  }

  trocarTema() {
    usarTemaEscuro = !usarTemaEscuro;
    notifyListeners();
  }
}