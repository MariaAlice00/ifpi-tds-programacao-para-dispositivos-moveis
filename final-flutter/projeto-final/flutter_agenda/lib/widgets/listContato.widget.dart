import 'package:flutter/material.dart';
import 'package:flutter_agenda/models/contato.model.dart';
import 'package:flutter_agenda/provider/contato.provider.dart';
import 'package:provider/provider.dart';

class ListContatos extends StatelessWidget {
  final Contato contato;
  const ListContatos(this.contato);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text(contato.nome),
      subtitle: Text(contato.telefone),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Excluir Contato'),
                    content: Text('Deseja excluir o contato?'),
                    actions: [
                      FlatButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                          'Cancelar'.toUpperCase(),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Provider.of<ContatosProvider>(
                            context,
                            listen: false,
                          ).remove(contato);
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Ok'.toUpperCase(),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}