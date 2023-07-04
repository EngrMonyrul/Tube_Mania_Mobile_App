import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/2.1. UserAccountDetails.dart';
import '../components/2.11. drawerHelp.dart';
import '../components/2.12. drawerFeedback.dart';
import '../components/2.13. drawerContact.dart';
import '../components/2.14. drawerAboutUs.dart';
import '../components/2.2. drawerHome.dart';
import '../components/2.3. drawerShorts.dart';
import '../components/2.4. drawerSubscription.dart';
import '../components/2.5. drawerliveShows.dart';
import '../components/2.6. drawerHistory.dart';
import '../components/2.7. drawerSavedVideos.dart';
import '../components/2.8. drawerLikedVideos.dart';
import '../components/2.9. drawerSettings.dart';
import '../provider/1.2.1. ModeChanagerProvider.dart';

class AppBarDrawer extends StatelessWidget {
  const AppBarDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ModeChanger>(
      builder: (context, value, child) {
        return Drawer(
          backgroundColor: value.modeStatus ? null : Colors.white,
          child: ListView(
            children: const [
              UserAccountDetails(),
              drawerHome(),
              drawerShorts(),
              drawerSubscription(),
              drawerLiveShows(),
              Divider(thickness: 2),
              drawerHistory(),
              drawerSavedVideos(),
              drawerLikedVideos(),
              Divider(thickness: 2),
              drawerSettings(),
              drawerHistory(),
              drawerHelp(),
              drawerFeedback(),
              drawerContact(),
              drawerAboutUs(),
            ],
          ),
        );
      },
    );
  }
}
