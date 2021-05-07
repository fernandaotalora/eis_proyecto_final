import 'package:flutter/material.dart';
import 'package:vacunas/models/resvacuna.models.dart';

class CardWidget extends StatelessWidget {
  final ResVacuna resumen;

  CardWidget({@required this.resumen});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_drop_down_circle),
              title: Text(resumen.nomTerritorio),
              subtitle: Text(
                'Vacunas asignadas',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Cantidad: ' + resumen.cantidad,
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Perform some action
                  },
                  child: Icon(Icons.access_alarm),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Perform some action
                  },
                  child: Icon(Icons.access_alarms_sharp),
                ),
              ],
            ),
            Image.asset('assets/coronavirus.png'),
            Image.asset('assets/vacuna.png'),
          ],
        ),
      ),
    );
  }
}
