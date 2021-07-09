import 'package:flutter/material.dart';
import 'package:flutter_agenda/provider/contato.provider.dart';
import 'package:flutter_agenda/routes/app_routes.dart';
import 'package:flutter_agenda/widgets/listContato.widget.dart';
import 'package:provider/provider.dart';

class ContatosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ContatosProvider contatosProvider = Provider.of(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('App de Contatos'),
      ),
      body: contatosProvider.count == 0 ? Center(
        child: Column(
          children: [
            Text(
              ":(",
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Não há nenhum contato cadastrado!",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      )
      : SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          child: ListView.builder(
            itemCount: contatosProvider.count,
            itemBuilder: (context, index) => ListContatos(
              contatosProvider.byIndex(index),
            )
          ),
        ),
      ),
    );
  }
}