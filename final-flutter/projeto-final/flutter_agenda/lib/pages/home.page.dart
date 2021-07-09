import 'package:flutter/material.dart';
import 'package:flutter_agenda/pages/mapa.dart';
import 'package:flutter_agenda/pages/opcoes.contatos.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Página Inicial',
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App de Contatos', style: TextStyle(fontSize: 25)),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 30),
                width: 170,
                height: 170,
                child: Image.asset('images/logo.png'),
              ),
              SizedBox(
                height: 240,
              ),
              ButtonTheme(
                height: 70,
                buttonColor: Colors.orange,
              // ignore: deprecated_member_use
                child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OpcoesPage()),);
                },
                child: Text("Contatos", style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              ButtonTheme(
              height: 70,
              buttonColor: Colors.orange,
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MapaPage()),);
                },
                child: Text("Consultar Mapa", style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}