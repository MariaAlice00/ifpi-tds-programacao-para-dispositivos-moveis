import 'package:flutter/material.dart';
import 'package:flutter_agenda/pages/contatoForm.page.dart';
import 'package:flutter_agenda/pages/login.page.dart';
import 'package:flutter_agenda/provider/contato.provider.dart';
import 'package:flutter_agenda/routes/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ContatosProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.orange
        ),
        home: LoginPage(),
        routes: {
          AppRoutes.ADICIONAR_CONTATO: (_) => ContatoForm(),
        },
      ),
    );
  }
}


