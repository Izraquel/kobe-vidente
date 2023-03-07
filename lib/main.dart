import 'package:flutter/material.dart';
import 'package:vidente_app/widgets/vidente_app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

//import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await DotEnv.load(fileName: '.env');
  runApp(VidenteApp());
}
