import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/provider/1.2.1.%20ModeChanagerProvider.dart';

class UserAccountDetails extends StatelessWidget {
  const UserAccountDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ModeChanger>(
      builder: (context, value, child) {
        return UserAccountsDrawerHeader(
          decoration: BoxDecoration(
              color:
                  value.modeStatus ? Colors.grey : CupertinoColors.systemPink),
          accountEmail: const Text('engrmonirulislam513@gmail.com'),
          accountName: const Text('Monirul Islam'),
          currentAccountPicture: CircleAvatar(
            radius: 35,
            backgroundColor:
                value.modeStatus ? Colors.green.withOpacity(0.5) : Colors.green,
            child: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/icons/person.png'),
              backgroundColor: Colors.black,
            ),
          ),
        );
      },
    );
  }
}
