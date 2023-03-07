import 'package:flutter/material.dart';
import 'package:vidente_app/models/previsao_hora.dart';
import 'package:vidente_app/services/previsao_service.dart';
import 'package:vidente_app/widgets/proximas_temperaturas.dart';
import 'package:vidente_app/widgets/resumo.dart';

class Home extends StatefulWidget {
  // const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<PrevisaoHora> ultimasPrevisoes;

  @override
  void initState() {
    super.initState();
    PrevisaoService service = PrevisaoService();
    ultimasPrevisoes = service.recuperarUltimasPrevisoes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kobe Vidente'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Resumo(
              cidade: 'Volta Redonda - RJ',
              temperaturaAtual: 33,
              temperaturaMaxima: 39,
              temperaturaMinima: 27,
              descricao: 'Ensolarado',
              numeoroIcone: 1,
            ),
            Padding(padding: EdgeInsets.all(10)),
            ProximasTemperaturas(
              previsoes: ultimasPrevisoes,
            )
          ],
        ),
      ),
    );
  }
}
