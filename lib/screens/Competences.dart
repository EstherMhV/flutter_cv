import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompetencesScreen extends StatelessWidget {
  const CompetencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ExperienceScreen",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 187, 225, 255),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: const Icon(FontAwesomeIcons.linkedin),
              onPressed: () {
                launchUrl(Uri.parse(
                    'https://www.linkedin.com/in/esther-mehal-b93b9a260'));
              },
            ),
          ),
        ],
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Data",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                alignment: WrapAlignment.center,
                children: [
                  SquareCard(assetPath: './assets/images/express.png'),
                  SquareCard(assetPath: './assets/images/mongodb.png'),
                  SquareCard(assetPath: './assets/images/mysql.png'),
                  SquareCard(assetPath: './assets/images/node-js.png'),
                  SquareCard(assetPath: './assets/images/postger.png'),
                  SquareCard(assetPath: './assets/images/python-logo.png'),
                  SquareCard(assetPath: './assets/images/php.png'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Web",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                alignment: WrapAlignment.center,
                children: [
                  SquareCard(assetPath: './assets/images/react.png'),
                  SquareCard(assetPath: './assets/images/js.png'),
                  SquareCard(assetPath: './assets/images/html.png'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Mobile",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                alignment: WrapAlignment.center,
                children: [
                  SquareCard(assetPath: './assets/images/flutter_logo.png'),
                  SquareCard(assetPath: './assets/images/native.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SquareCard extends StatelessWidget {
  final String assetPath;
  const SquareCard({required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 5,
      child: Container(
        width: 100,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            assetPath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
