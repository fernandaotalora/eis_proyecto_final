class Vacuna {
  Vacuna({
    this.numResolucion,
    this.fechaResolucion,
    this.aO,
    this.codTerritorio,
    this.nomTerritorio,
    this.laboratorioVacuna,
    this.cantidad,
    this.usoVacuna,
    this.fechaCorte,
  });

  String numResolucion;
  DateTime fechaResolucion;
  String aO;
  String codTerritorio;
  String nomTerritorio;
  String laboratorioVacuna;
  String cantidad;
  String usoVacuna;
  DateTime fechaCorte;

  factory Vacuna.fromJson(Map<String, dynamic> json) => Vacuna(
        numResolucion: json["num_resolucion"],
        fechaResolucion: DateTime.parse(json["fecha_resolucion"]),
        aO: json["a_o"],
        codTerritorio: json["cod_territorio"],
        nomTerritorio: json["nom_territorio"],
        laboratorioVacuna: json["laboratorio_vacuna"],
        cantidad: json["cantidad"],
        usoVacuna: json["uso_vacuna"],
        fechaCorte: DateTime.parse(json["fecha_corte"]),
      );

  Map<String, dynamic> toJson() => {
        "num_resolucion": numResolucion,
        "fecha_resolucion": fechaResolucion.toIso8601String(),
        "a_o": aO,
        "cod_territorio": codTerritorio,
        "nom_territorio": nomTerritorio,
        "laboratorio_vacuna": laboratorioVacuna,
        "cantidad": cantidad,
        "uso_vacuna": usoVacuna,
        "fecha_corte": fechaCorte.toIso8601String(),
      };
}
