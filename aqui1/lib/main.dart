import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        title: 'login',
        home: new LoginPage(),
      );
    }
  }


    class LoginPage extends StatelessWidget{
      @override
      Widget build(BuildContext context) {
        return new LoginPageState();
      }
    }

    class LoginPageState extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return new Scaffold(
        backgroundColor: Colors.greenAccent,
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image(
              image: new AssetImage("assets/teste.jpeg"),
              fit: BoxFit.cover,
              color: Colors.black87,
              colorBlendMode: BlendMode.darken,
            ),
            new Form(
              child: new Theme(
                data: new ThemeData(
                  brightness: Brightness.dark, 
                  primarySwatch: Colors.teal,
                  inputDecorationTheme: new InputDecorationTheme(
                    labelStyle: new TextStyle(
                      color: Colors.teal, fontSize: 20.0
                    ),
                  )
                ),
                 child: Container(
                    padding: const EdgeInsets.all(40.0),
                   child: new Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     
                    children: <Widget>[
                      new TextFormField(
                         decoration: new InputDecoration(
                          labelText: "Usuario",
                          
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                       ),
                       new TextFormField(
                         decoration: new InputDecoration(
                          labelText: "Senha",

                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                       ),
                       new Padding(
                         padding: const EdgeInsets.only(top: 20.0),
                       ),
                       new MaterialButton(
                         color: Colors.teal,
                         textColor: Colors.white,
                         child: new Text("Login"),
                         onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => new AlertDialog(
                                      title: new Text("Atenção"),
                                      content: new Text("Estamos desenvolvendo as telas deste aplicativo"),
                                  )
                              );
                          }
                       ),
                    ],
                  ),
                 ),
              )
            )
          ],
        ),
      );
    }
}