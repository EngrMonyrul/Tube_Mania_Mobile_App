import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/provider/1.2.1.%20ModeChanagerProvider.dart';
import 'package:untitled1/screens/homeScreen.dart';

import 'components/MainFunctionBuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ModeChanger()),
        ],
        child: buildBuilder());
  }
}
