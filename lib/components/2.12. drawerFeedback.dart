import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/1.2.1. ModeChanagerProvider.dart';

class drawerFeedback extends StatelessWidget {
  const drawerFeedback({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ModeChanger>(
      builder: (context, value, child) {
        return ListTile(
          leading: Container(
            height: 30,
            width: 30,
            // decoration: const BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage('assets/images/live.png'),
            //         fit: BoxFit.fill),
            //
            // ),
            child: const Icon(
              Icons.feedback_outlined,
              size: 30,
            ),
          ),
          title: const Text('Send Feedback'),
          titleTextStyle: TextStyle(
            fontFamily: 'inter',
            fontSize: 20,
            color: value.modeStatus ? Colors.white : Colors.black,
          ),
          onTap: () {},
        );
      },
    );
  }
}
