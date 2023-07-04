import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/1.2.1. ModeChanagerProvider.dart';
import 'assistComp/2.3.1. ShortsScreen.dart';

class drawerShorts extends StatefulWidget {
  const drawerShorts({
    super.key,
  });

  @override
  State<drawerShorts> createState() => _drawerShortsState();
}

class _drawerShortsState extends State<drawerShorts> {
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
                    image: AssetImage('assets/images/shorts3.png'),
                    fit: BoxFit.cover)),
          ),
          title: const Text('Shorts'),
          titleTextStyle: TextStyle(
            fontFamily: 'inter',
            fontSize: 20,
            color: value.modeStatus ? Colors.white : Colors.black,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ShortsScreen()));
          },
        );
      },
    );
  }
}
