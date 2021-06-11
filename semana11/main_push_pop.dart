  
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "MyApp",
    home: FirstRoute(),
    theme: ThemeData(
    primarySwatch: Colors.purple,
    ),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Página'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Segunda rota'),
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => SecondRoute()),);
          },
        ),
      ),
    );
  }
}


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda página"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Primeira rota'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}