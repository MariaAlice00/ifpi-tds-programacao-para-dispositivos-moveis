import 'package:flutter/material.dart';


class MapaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Mapa'),
          backgroundColor: Colors.orange,
        ),
        body: Text(
          'MAPA'
        ),
      ),
    );
  }
}