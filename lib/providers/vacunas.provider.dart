import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class VacunaProvider {
  getVacunas() async {
    Map<String, String> queryParameters = {
      '$select':
          'a_o, cod_territorio,nom_territorio,laboratorio_vacuna,sum(cantidad),uso_vacuna,fecha_corte',
      '$group':
          '_o, cod_territorio,nom_territorio,laboratorio_vacuna,uso_vacuna,fecha_corte'
    };

    var url = Uri.https(
        'www.datos.gov.co', '/resource/sdvb-4x4j.json', queryParameters);

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as List<dynamic>;

      print(jsonResponse);
    }
  }
}
