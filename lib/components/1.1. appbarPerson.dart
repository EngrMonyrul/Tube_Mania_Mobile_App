import 'package:flutter/material.dart';

GestureDetector appbarPerson() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      // decoration: BoxDecoration(
      //     border: Border.all(color: Colors.white), shape: BoxShape.circle),
      child: const Icon(
        Icons.person_2_outlined,
        color: Colors.white,
        size: 25,
      ),
    ),
  );
}
