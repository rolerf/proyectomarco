import 'package:flutter/material.dart';
import 'core/utils/inactivity_manager.dart';
import 'core/utils/scroll_behavior.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    InactivityManager().startTracking(
      onTimeout: () {
        // Aquí regresas al login o cierras la app
        // Navigator.pushReplacement(...)
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) => InactivityManager().userInteractionDetected(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: CustomScrollBehavior(),
        home: LoginScreen(),
      ),
    );
  }
}
