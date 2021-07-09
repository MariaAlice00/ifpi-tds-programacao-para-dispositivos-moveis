import 'package:flutter/material.dart';
import 'package:flutter_agenda/pages/lista.contatos.dart';
import 'package:flutter_agenda/pages/home.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('images/logo.png')
                ),

                SizedBox(
                  height: 50,
                ),

                TextField(
                  onChanged: (text){
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text){
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 15),

                ButtonTheme(
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      if(email == 'alice@email.com' && password == '12345'){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
                      }else{
                        showDialog(
                          context: context, 
                          builder: (context) => AlertDialog(
                            title: Text('ERRO!'),
                            content: Text('Usuário ou Senha inválidos!'),
                            actions: <Widget>[
                              // ignore: deprecated_member_use
                              FlatButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          )
                        );
                      }
                    },
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                    color: Colors.orange,
                  )
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}