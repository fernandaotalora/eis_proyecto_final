import 'package:flutter/foundation.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LaboratioSeries {
  final String laboratorio;
  final int cantidad;
  final charts.Color barColor;

  LaboratioSeries(
      {@required this.laboratorio,
      @required this.cantidad,
      @required this.barColor});
}
