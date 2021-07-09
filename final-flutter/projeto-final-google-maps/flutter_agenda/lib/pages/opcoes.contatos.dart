import 'package:flutter/material.dart';
import 'package:flutter_agenda/pages/lista.contatos.dart';
import 'package:flutter_agenda/routes/app_routes.dart';

class OpcoesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Página de Opções',
      home: OpcoesPage(),
    );
  }
}


class OpcoesPage extends StatefulWidget {
  @override
  _OpcoesPageState createState() => _OpcoesPageState();
}

class _OpcoesPageState extends State<OpcoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos', style: TextStyle(fontSize: 25)),
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
                  Navigator.of(context).pushNamed(AppRoutes.ADICIONAR_CONTATO);
                },
                child: Text("Cadastrar Contato", style: TextStyle(fontSize: 20, color: Colors.white),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContatosPage()),);
                },
                child: Text("Listar Contatos", style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}