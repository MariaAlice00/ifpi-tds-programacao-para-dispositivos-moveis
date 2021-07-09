import 'package:flutter/material.dart';
import 'package:flutter_agenda/models/contato.model.dart';
import 'package:flutter_agenda/provider/contato.provider.dart';
import 'package:provider/provider.dart';

class ContatoForm extends StatefulWidget {
  @override
  _ContatoFormState createState() => _ContatoFormState();
}

class _ContatoFormState extends State<ContatoForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerTelefone = TextEditingController();

  final FocusNode _focusNome = FocusNode();
  final FocusNode _focusTelefone = FocusNode();

  final Map<String,dynamic> _formData = {};

  void alterarContato(Contato contato){
    if (contato != null){
      _formData['id'] = contato.idContato;
      _formData['nome'] = contato.nome;
      _formData['telefone'] = contato.telefone;

      _controllerNome.text = contato.nome;
      _controllerTelefone.text = contato.telefone;
    }
  }

  // @override void didChangeDependencies(){
  //   super.didChangeDependencies();
  //   final Contato contato = ModalRoute.of(context).settings.arguments;

  //   alterarContato(contato);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Contato'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () => addOuAlterar(),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Nome"),
                controller: _controllerNome,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Informe um nome!";
                  } else {
                    return null;
                  }
                },
                onFieldSubmitted: (_) => addOuAlterar(),
                onSaved: (value) => _formData['nome'] = value!.trim(),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Telefone"),
                controller: _controllerTelefone,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Informe o telefone!";
                  } else {
                    return null;
                  }
                },
                onFieldSubmitted: (_) => addOuAlterar(),
                onSaved: (value) => _formData['telefone'] = value!.trim(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addOuAlterar() {
    final isValid = _formKey.currentState!.validate();

    if(isValid) {
      _formKey.currentState!.save();
      Provider.of<ContatosProvider>(
        context,
        listen: false,
      ).put(
        Contato(
          idContato: _formData['id'],
          nome: _formData['nome'],
          telefone: _formData['telefone'],
        ),
      );
      Navigator.of(context).pop();
    }
  }
}