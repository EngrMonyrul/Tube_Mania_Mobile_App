import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/1.2.1. ModeChanagerProvider.dart';

class appBarMode extends StatefulWidget {
  const appBarMode({super.key});

  @override
  State<appBarMode> createState() => _appBarModeState();
}

class _appBarModeState extends State<appBarMode> {
  @override
  Widget build(BuildContext context) {
    final ProviderMode = Provider.of<ModeChanger>(context, listen: false);
    return Consumer<ModeChanger>(
      builder: (context, value, child) {
        return Container(
          // decoration: BoxDecoration(
          //   border: Border.all(color: Colors.white),
          //   shape: BoxShape.circle
          // ),
          child: GestureDetector(
            onTap: () {
              value.setMode();
              value.modeStatus
                  ? value.setModeColor(ThemeMode.dark)
                  : value.setModeColor(ThemeMode.light);
              setState(() {});
            },
            child: value.modeStatus
                ? const Icon(
                    Icons.nights_stay_outlined,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.white,
                  ),
          ),
        );
      },
    );
  }
}
