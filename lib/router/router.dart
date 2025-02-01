import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:refuel_app/Pages/HomePage.dart';
import 'package:refuel_app/Pages/PayPage.dart';
import 'package:refuel_app/Pages/FuelPage.dart';

final GlobalKey<NavigatorState> _rootKey = GlobalKey<NavigatorState>();

final GoRouter globalRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/pay',
      builder: (context, state) => const PayPage(),
    ),
    GoRoute(
      path: '/fuel',
      builder: (context, state) => const FuelPage(),
    ),
  ],
);
