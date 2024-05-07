import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
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
        toolbarHeight: 400,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('../assets/images/1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Center(
        child: Table(
          columnWidths: {
            0: FlexColumnWidth(0.1),
          },
          border: TableBorder.all(color: Colors.black),
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Icon(Icons.person),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Text(
                        'Actuellement en B3 dev dans a My Digital School je passe cette annee mon CDA afin de faire un master en Developpement FullStack'),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Icon(Icons.email),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Text('esther.mehal@gmail.com'),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Icon(Icons.phone),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Text('07 60 88 80 94'),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Icon(Icons.location_on),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Text('Paris'),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Icon(Icons.desktop_windows_rounded),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Text('Portfolio'),
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
