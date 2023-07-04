import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/provider/1.2.1.%20ModeChanagerProvider.dart';
import '../widgets/1. appbar.dart';
import '../widgets/2. appBarDrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final modeProvider = Provider.of<ModeChanger>(context, listen: false);
    return Scaffold(
      appBar: AppBarDetails(),
      drawer: const AppBarDrawer(),
    );
  }
}
