import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InfosScreen"),
      ),
      body: Center(
        child: Text("InfosScreen"),
      ),
    );
  }
}
