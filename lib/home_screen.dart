import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            // context.goNamed("second-screen");
            // context.go("/second-screen/bu-parametr"); //parametr yuborish
            context.goNamed("second-screen",
                pathParameters: {"params": "bu parametr"}); //parametr yuborish
          },
          child: const Text("SecondPage"),
        ),
      ),
    );
  }
}
