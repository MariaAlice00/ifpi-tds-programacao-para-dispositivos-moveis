import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_agenda/data/database.dart';
import 'package:flutter_agenda/models/contato.model.dart';

class ContatosProvider with ChangeNotifier {
  final Map<String, Contato> _items = {...dataContato};

  List<Contato> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Contato byIndex(int index) {
    return _items.values.elementAt(index);
  }

  void put(Contato contato) {
    if (contato == null) {
      return;
    }

    if (contato.idContato != null && contato.idContato.trim().isNotEmpty && _items.containsKey(contato.idContato)) {
      _items.update(
        contato.idContato, 
        (_) => Contato(
          idContato: contato.idContato,
          nome: contato.nome,
          telefone: contato.telefone,
        ),
      );
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id, 
        () => Contato(
          idContato: id,
          nome: contato.nome,
          telefone: contato.telefone,
        ),
      );
    } 
    notifyListeners();
  }
  
  void remove(Contato contato) {
    if (contato != null && contato.idContato != null) {
      _items.remove(contato.idContato);
      notifyListeners();
    }
  }
}