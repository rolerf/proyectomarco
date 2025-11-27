import 'dart:async';
import 'package:flutter/material.dart';

class InactivityManager {
  static final InactivityManager _instance = InactivityManager._internal();
  factory InactivityManager() => _instance;

  InactivityManager._internal();

  Timer? _timer;
  VoidCallback? onTimeout;

  void startTracking({required VoidCallback onTimeout}) {
    this.onTimeout = onTimeout;
    _resetTimer();
  }

  void _resetTimer() {
    _timer?.cancel();
    _timer = Timer(const Duration(minutes: 5), () {
      if (onTimeout != null) onTimeout!();
    });
  }

  /// Llamar este método cuando haya interacción del usuario
  void userInteractionDetected() {
    _resetTimer();
  }
}
