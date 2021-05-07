import 'package:flutter/material.dart';
import 'package:vacunas/models/resvacuna.models.dart';
import 'package:vacunas/models/vacuna.models.dart';
import 'package:vacunas/providers/vacunas.provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final VacunaProvider vacunaProvider = VacunaProvider();
  List<ResVacuna> resumen = [];
  Future<List<Vacuna>> listVacunas;
  List<String> departamentos;

  @override
  void initState() {
    listVacunas = vacunaProvider.getVacunas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: _body(),
    );
  }

  _body() {
    return FutureBuilder(
        //initialData: [],
        future: listVacunas,
        builder: (BuildContext context, AsyncSnapshot<List<Vacuna>> snapshot) {
          if (snapshot.hasData) {
            final datos = snapshot.data;
            List<String> listaTemporal = [];
            datos.forEach((element) {
              if (!listaTemporal.contains(element.nomTerritorio))
                listaTemporal.add(element.nomTerritorio);
            });

            var aux = 0;
            for (var e in listaTemporal) {
              datos.forEach((element) {
                if (element.nomTerritorio == e) {
                  aux += int.parse(element.cantidad);
                }
              });
              resumen
                  .add(ResVacuna(nomTerritorio: e, cantidad: aux.toString()));
              aux = 0;
            }
            return GridView(
              children: [Text("Prueba")],
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          //   return Container(child: Text("123"));
        });
  }
}
