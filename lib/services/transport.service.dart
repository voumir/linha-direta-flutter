import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' show Client;
import 'package:linhaf/models/Transport.dart';
import 'package:linhaf/bloc/Constants.dart';

class TransportService {

  Client client = Client();

  Future<List<Transport>> getTransports(String transportType, String transportName) async {
    
    var api = Constants.urlBase + "process.php?a=nc&p=%&t=$transportType";

    final response = await client.get(api);
    if (response.statusCode == 200) {
      
      var listTransport = List<Transport>();
      var list = json.decode(response.body) as List<dynamic>;

      for (dynamic item in list) {
        Transport product = new Transport(id: item["id"], 
        nome: item["nome"], 
        codigo: item["codigo"] );
        
        listTransport.add(product);
      }

      return listTransport;

    } else {
      throw Exception('Erro na busca do $transportName');
    }


  }
}
