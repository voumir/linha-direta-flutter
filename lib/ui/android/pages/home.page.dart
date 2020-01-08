import 'package:flutter/material.dart';

import 'package:linhaf/bloc/Constants.dart';
import 'package:linhaf/ui/android/pages/transport.page.dart';

class HomePage extends StatefulWidget {

  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                Constants.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/images/onibus128x128.png"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: FlatButton(
                color: Colors.blueAccent,
                child: Text(
                  Constants.onibusName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {

                  Navigator
                  .of(context)
                  .push(MaterialPageRoute(
                    builder: (context) => TransportPage(typeTransport:Constants.onibus)));

                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: FlatButton(
                color: Colors.blueAccent,
                child: Text(
                  Constants.lotacaoName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {

                  Navigator
                  .of(context)
                  .push(MaterialPageRoute(
                    builder: (context) => TransportPage(typeTransport:Constants.lotacao)));

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
