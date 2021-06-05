import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  List<Item> items=[];
  MyHomePage(){
    items = [];
    items.add(Item(nome: "Maçã", chek:true));
    items.add(Item(nome: "Laranja", chek:true));
    items.add(Item(nome: "Melancia", chek:true));
  }

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("OP"),
        title: Text("Home"),
        actions: <Widget>[
          Icon(Icons.local_grocery_store),
        ],
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = widget.items[index];
          return CheckboxListTile(
            title: Text(item.nome),
            subtitle: Text("Este item ${item.chek ? "": "não"} está selecionado"),
            key: Key(item.nome),
            value: item.chek,
            onChanged: (value){
              setState((){
                item.chek = value;
              });
              print("Mudou check da palavra ${item.nome} para: $value",);
            });
        },
      ),
    );
  }
}


class Item {
  String nome;
  bool chek;
  Item({this.nome, this.chek});
}
