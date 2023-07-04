import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/provider/1.2.1.%20ModeChanagerProvider.dart';

import '../screens/homeScreen.dart';

class drawerHome extends StatefulWidget {
  const drawerHome({
    super.key,
  });

  @override
  State<drawerHome> createState() => _drawerHomeState();
}

class _drawerHomeState extends State<drawerHome> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ModeChanger>(
      builder: (context, value, child) {
        return ListTile(
          leading: Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.cover)),
          ),
          title: const Text('Home'),
          titleTextStyle: TextStyle(
            fontFamily: 'inter',
            fontSize: 20,
            color: value.modeStatus ? Colors.white : Colors.black,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
            setState(() {});
          },
        );
      },
    );
  }
}
