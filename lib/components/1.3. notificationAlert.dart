import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/1.2.1. ModeChanagerProvider.dart';

class notificationAlert extends StatefulWidget {
  const notificationAlert({super.key});

  @override
  State<notificationAlert> createState() => _notificationAlertState();
}

class _notificationAlertState extends State<notificationAlert> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ModeChanger>(
      builder: (context, value, child) {
        return GestureDetector(
          onTap: () {
            value.setNotification();
            setState(() {});
          },
          child: Container(
            child: value.notificationStatus
                ? const Icon(Icons.notifications_active_outlined)
                : const Icon(Icons.notifications_off_outlined),
          ),
        );
      },
    );
  }
}
