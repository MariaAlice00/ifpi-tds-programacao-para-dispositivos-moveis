import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "MyApp",
    initialRoute: '/primeira',
    routes: {
      '/primeira': (context) => FirstRoute(),
      '/segunda': (context) => SecondRoute(),
    },
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
            Navigator.pushNamed(context, '/segunda');
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
        title: Text("Segunda Página"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Primeira rota'),
          onPressed: () {
            Navigator.pushNamed(context, '/primeira');
          },
        ),
      ),
    );
  }
}
