import 'package:flutter/material.dart';

class CompetencesScreen extends StatelessWidget {
  const CompetencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Competences"),
      ),
      body: Center(
        child: Text("Competences"),
      ),
    );
  }
}
