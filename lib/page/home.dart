import 'package:flutter/material.dart';
import 'package:vacunas/providers/vacunas.provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final VacunaProvider vacunaProvider = VacunaProvider();

  @override
  void initState() {
    vacunaProvider.getVacunas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Text("Prueba inicial"),
    );
  }
}
