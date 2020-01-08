import 'dart:convert';

import 'package:linhaf/models/HeaderStopBus.dart';
import 'package:linhaf/models/ResponseBodyBus.dart';
import 'package:linhaf/models/StopBus.dart';

class Conversion {
  var listStopBus = new List<StopBus>();
  var listResponseBodyBus = new List<ResponseBodyBus>();
  var bus = HeaderStopBus();

  List<ResponseBodyBus> convertJsonToBodyBus(Object object) {
    var list = json.decode(object) as List<dynamic>;

    for (dynamic key in list) {
      if (isNumber(key)) {
        var stopBus = new StopBus();

        stopBus.id = key;
        stopBus.lat = key["lat"];
        stopBus.lng = key["lng"];

        listStopBus.add(stopBus);
      } else {
        if (key == 'idlinha') {
          this.bus.idLinha = key["idLinha"];
        }
        if (key == 'nome') {
          this.bus.nome = key["nome"];
        }
        if (key == 'codigo') {
          this.bus.codigo = key["codigo"];
        }
      }
    }

    for (StopBus value in listStopBus) {
      var body = new ResponseBodyBus();
      body.idlinha = this.bus.idLinha;
      body.nome = this.bus.nome;
      body.codigo = this.bus.codigo;

      body.id = value.id;
      body.lat = value.lat;
      body.lng = value.lng;

      listResponseBodyBus.add(body);
    }

    return listResponseBodyBus;
  }

  bool isNumber(String s) {
    if (s == null) {
      return false;
    }
    return int.tryParse(s) != null;
  }

  // lista de itens test
  listBodyBusTest(List<ResponseBodyBus> list) {
    print('--- Testando ---');
    for (ResponseBodyBus it in list) {
      print(it.nome + " - " + it.codigo);
    }
    print('--- fim teste ---');
  }

  // existe itens test
  existItensTest(List<StopBus> listStopBus) {
    if (listStopBus.length < 1) {
      print("Lista StopBus sem elementos!\nQuantidade " +
          listStopBus.length.toString());
    }
  }
}
