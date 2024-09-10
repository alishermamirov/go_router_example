import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ThirdScreen"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.go("/");
          },
          child: const Text("home"),
        ),
      ),
    );
  }
}
