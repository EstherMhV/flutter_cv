import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
            height: kToolbarHeight,
            child: Text(
              "ESTHER MEHAL",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )),
        centerTitle: true,
        toolbarHeight: 300,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('./assets/images/1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Center(
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(0.2),
          },
          border: TableBorder.all(color: Colors.black),
          children: const [
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                      child: Text(
                        'Actuellement en B3 dev dans a My Digital School je passe cette annee mon CDA afin de faire un master en Developpement FullStack.',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                      child: Icon(Icons.email),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                    child: Text(
                      'esther.mehal@gmail.com',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                    child: Icon(Icons.phone),
                  )),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                    child: Text(
                      '07 60 88 80 94',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                    child: Icon(Icons.location_on),
                  )),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                    child: Text(
                      'Paris',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                      child: Icon(Icons.desktop_windows_rounded),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                    child: Text(
                      'Portfolio',
                      textAlign: TextAlign.left,
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
