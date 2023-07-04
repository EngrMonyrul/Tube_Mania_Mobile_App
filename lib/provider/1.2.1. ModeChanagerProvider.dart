import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ModeChanger with ChangeNotifier {
  bool _modeStatus = false;
  ThemeMode _currentMode = ThemeMode.light;
  bool _notificationStatus = false;
  bool _vpnStatus = false;
  int _likes = 0;
  bool _likesCon = false;

  bool get modeStatus => _modeStatus;
  ThemeMode get currentMode => _currentMode;
  bool get notificationStatus => _notificationStatus;
  bool get vpnStatus => _vpnStatus;
  int get likes => _likes;
  bool get likesCon => _likesCon;

  void setMode() {
    _modeStatus = !_modeStatus;
    notifyListeners();
  }

  void setModeColor(themeMode) {
    _currentMode = themeMode;
    notifyListeners();
  }

  void setNotification() {
    _notificationStatus = !_notificationStatus;
    notifyListeners();
  }

  void setVpn() {
    _vpnStatus = !_vpnStatus;
    notifyListeners();
  }

  void addLikes() {
    _likes++;
  }

  void removeLikes() {
    _likes--;
  }

  void setLikesCon() {
    _likesCon = !_likesCon;
  }
}
