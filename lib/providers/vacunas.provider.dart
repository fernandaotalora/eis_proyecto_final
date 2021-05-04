import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class VacunaProvider {
  getVacunas() async {
    var url = Uri.https('www.datos.gov.co', '/resource/sdvb-4x4j.json');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;

      print(jsonResponse);
    }
  }
}
