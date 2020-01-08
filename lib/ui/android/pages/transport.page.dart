import 'package:flutter/material.dart';

import 'package:linhaf/bloc/Constants.dart';
import 'package:linhaf/bloc/Delay.dart';
import 'package:linhaf/models/Transport.dart';
import 'package:linhaf/services/transport.service.dart';

class TransportPage extends StatefulWidget {

  final String typeTransport;

  const TransportPage({ this.typeTransport}) ;

  @override
  TransportPageState createState() => TransportPageState();
}

class TransportPageState extends State<TransportPage> {
  final _typedDelay = Delay(milliseconds: 500);

  var transports = List<Transport>();
  var filteredTransports = List<Transport>();
  TransportService _respository = new TransportService();
  String nameTransport;


  @override
  void initState() {
    super.initState();

    if (widget.typeTransport == Constants.lotacao) {
      nameTransport = Constants.lotacaoName;
    } else {
      nameTransport = Constants.onibusName;
    }

    _respository
        .getTransports(widget.typeTransport, nameTransport)
        .then((onValue) {
      setState(() {
        transports = onValue;
        filteredTransports = transports;
      });
    }).catchError((onError) {
      Text('Erro inesperado na API $nameTransport');
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(nameTransport),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              hintText: 'digite o nome ou linha',
              labelText: "Filtro",
            ),
            onChanged: (string) {
              _typedDelay.run(() {
                setState(() {
                  filteredTransports = transports
                      .where((u) => (u.nome
                              .toLowerCase()
                              .contains(string.toLowerCase()) ||
                          u.codigo
                              .toLowerCase()
                              .contains(string.toLowerCase())))
                      .toList();
                });
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: filteredTransports.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          filteredTransports[index].nome,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          filteredTransports[index].codigo,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
