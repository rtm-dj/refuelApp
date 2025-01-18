import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:refuel_app/router/router.dart';

final GlobalKey<NavigatorState> _rootKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Refuel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: globalRouter,
    );
  }
}