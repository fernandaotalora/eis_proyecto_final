import 'package:flutter/material.dart';
import 'package:vacunas/models/resvacuna.models.dart';
import 'package:vacunas/models/vacuna.models.dart';

import 'chart_vacuna.dart';

class CardWidget extends StatelessWidget {
  final ResVacuna resumen;
  final List<Vacuna> datos;

  CardWidget({@required this.resumen, this.datos});

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
              title: Text(
                resumen.nomTerritorio,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Cantidad vacunas asignadas',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                resumen.cantidad,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    _crearData();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SubscriberChart()));
                  },
                  child: Center(
                      child: Icon(
                    Icons.coronavirus,
                    color: Colors.orangeAccent,
                    size: 40,
                  )),
                ),
                TextButton(
                  onPressed: () {},
                  child: Center(
                      child: Icon(
                    Icons.group,
                    color: Colors.orangeAccent,
                    size: 40,
                  )),
                ),
              ],
            ),
            Image.asset('assets/coronavirus.jpg'),
          ],
        ),
      ),
    );
  }

  _crearData() {
    var fruits = ['apples', 'oranges', 'bananas'];
    fruits.where((f) => f.startsWith('a')).toList(); //apples

    List<Vacuna> departamento = datos
        .where((item) => item.nomTerritorio.contains(resumen.nomTerritorio))
        .toList();
  }
}
