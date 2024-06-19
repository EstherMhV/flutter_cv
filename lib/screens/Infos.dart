import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ExperienceScreen",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 187, 225, 255),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: const Icon(FontAwesomeIcons.linkedin),
              onPressed: () {
                // Ouvrir le site Web LinkedIn
                launchUrl(Uri.parse(
                    'https://www.linkedin.com/in/esther-mehal-b93b9a260'));
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Utilisez SingleChildScrollView pour permettre le défilement si le contenu dépasse l'écran
        child: Center(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Image.asset('assets/images/a.jpg'),
                  Container(
                    width: double.infinity,
                    color: const Color.fromARGB(223, 158, 158, 158),
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Tir à l\'arc',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Tir à l\'arc pendant 5ans compétitions comprises',
                  textAlign: TextAlign.center,
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Image.asset('assets/images/4.jpg'),
                  Container(
                    width: double.infinity,
                    color: const Color.fromARGB(223, 158, 158, 158),
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'Voyages',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Voyages en Europe,  Asie et Amérique Centrale , Antilles , Afrique du Nord , Moyen Orient',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
