import 'package:flutter/material.dart';

Container appTitle() {
  return Container(
    height: 30,
    width: 30,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover)),
  );
}
