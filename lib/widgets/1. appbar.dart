import 'package:flutter/material.dart';

import '../components/1.1. appbarPerson.dart';
import '../components/1.2. appbarMode.dart';
import '../components/1.3. notificationAlert.dart';
import '../components/1.4. vpnStatus.dart';
import '../components/1.5. appTitle.dart';
import '../components/1.6. appLogo.dart';

AppBar AppBarDetails() {
  return AppBar(
    title: Container(
      child: Row(
        children: [
          appTitle(),
          const SizedBox(
            width: 5,
          ),
          appLogo()
        ],
      ),
    ),
    centerTitle: true,
    titleTextStyle: const TextStyle(
      fontFamily: 'inter',
      fontSize: 20,
    ),
    actions: [
      const vpnStatus(),
      const SizedBox(
        width: 10,
      ),
      const notificationAlert(),
      const SizedBox(
        width: 10,
      ),
      appbarPerson(),
      const SizedBox(
        width: 10,
      ),
      const appBarMode(),
      const SizedBox(
        width: 10,
      ),
    ],
  );
}
