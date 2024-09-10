import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/home_screen.dart';
import 'package:go_router_example/second_screen.dart';
import 'package:go_router_example/third_screen.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: '/',
      name: "home",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
        path: '/second-screen/:params',
        name: "second-screen",
        builder: (context, state) {
          final String params = state.pathParameters["params"]!;
          return SecondScreen(
            params: params,
          );
        }),
    GoRoute(
      path: '/third-screen',
      name: "third-screen",
      builder: (context, state) => const ThirdScreen(),
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    appBar: AppBar(
      title: Text("Xatolik"),
    ),
    body: Center(
      child: Text("Sahifa topilmadi"),
    ),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
