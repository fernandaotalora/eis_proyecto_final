class ResVacuna {
  ResVacuna({
    this.nomTerritorio,
    this.cantidad,
  });

  String nomTerritorio;
  String cantidad;

  factory ResVacuna.fromJson(Map<String, dynamic> json) => ResVacuna(
        nomTerritorio: json["nom_territorio"],
        cantidad: json["cantidad"],
      );

  Map<String, dynamic> toJson() => {
        "nom_territorio": nomTerritorio,
        "cantidad": cantidad,
      };
}
