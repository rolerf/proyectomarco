import 'package:flutter/material.dart';
import 'core/utils/inactivity_manager.dart';
import 'core/utils/scroll_behavior.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';

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
        title: 'Sistema Integrado F.C.A',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        scrollBehavior: CustomScrollBehavior(),
        initialRoute: '/login',
        routes: {
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
        },
      ),
    );
  }
}
