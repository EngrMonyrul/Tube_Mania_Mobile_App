import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/1.2.1. ModeChanagerProvider.dart';

class vpnStatus extends StatefulWidget {
  const vpnStatus({super.key});

  @override
  State<vpnStatus> createState() => _vpnStatusState();
}

class _vpnStatusState extends State<vpnStatus> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ModeChanger>(
      builder: (context, value, child) {
        return GestureDetector(
          onTap: () {
            value.setVpn();
            setState(() {});
          },
          child: Container(
            child: value.vpnStatus
                ? const Icon(Icons.vpn_key_off_outlined)
                : const Icon(Icons.vpn_key_outlined),
          ),
        );
      },
    );
  }
}
