// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondScreen extends StatelessWidget {
  final String params;
  const SecondScreen({
    Key? key,
    required this.params,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(params),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.go("/third-screen");
          },
          child: const Text("third"),
        ),
      ),
    );
  }
}
