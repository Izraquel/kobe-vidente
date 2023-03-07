import 'package:flutter/material.dart';

class Resumo extends StatelessWidget {
  //const Resumo({super.key});

  final String cidade;
  final String descricao;
  final double temperaturaAtual;
  final double temperaturaMaxima;
  final double temperaturaMinima;
  final int numeoroIcone;

  const Resumo(
      {super.key,
      required this.cidade,
      required this.descricao,
      required this.temperaturaAtual,
      required this.temperaturaMaxima,
      required this.temperaturaMinima,
      required this.numeoroIcone});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Icon(Icons.brightness_6_outlined),
                Switch(
                  value: false,
                  onChanged: (valor) {},
                )
              ],
            )
          ],
        ),
        Text(
          cidade,
          style: TextStyle(fontSize: 18),
        ),
        Padding(padding: EdgeInsets.all(5)),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('images/$numeoroIcone.png')),
              Padding(padding: EdgeInsets.all(2)),
              Text(
                '${temperaturaAtual.toStringAsFixed(0)} ºC', //sem casa decimais
                style: TextStyle(fontSize: 40),
              ),
              VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${temperaturaMaxima.toStringAsFixed(0)} ºC'),
                  Text('${temperaturaMinima.toStringAsFixed(0)} ºC'),
                ],
              )
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        Text(
          descricao,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
