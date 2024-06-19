import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExperienceScreen"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.facebook),
            onPressed: () {
              // Ouvrir le site Web Facebook
              launchUrl('https://www.facebook.com' as Uri);
            },
          ),
          IconButton(
            icon: Icon(Icons.one_x_mobiledata),
            onPressed: () {
              // Ouvrir le site Web Twitter
              launchUrl('https://twitter.com' as Uri);
            },
          ),
        ],
      ),
      body: Center(
        child: Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset('./assets/images/ameli.png'),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('CPAM Val-de-Marne 2023-Aujourd\'hui'),
                        Text('Developeuse Web'),
                        Text('Developement d\'application web interne a l\'assurance maladie'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset('./assets/images/passy.png'),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('La Salle Passy Buzenval'),
                        Text('Colonne 2 - Ligne 2 - Texte 2'),
                        Text('Colonne 2 - Ligne 2 - Texte 3'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
