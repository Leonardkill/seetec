import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home() ,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController loginController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
          backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                  child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
                Icons.person,
                size: 150.0,
                color: Colors.green,
            ),

            TextFormField(
                controller: loginController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent,width: 2.0)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent,width: 2.0)
                  )
                ),
            ),
            Divider(),

             TextFormField(
                 controller: senhaController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Senha'
                ),
            ),
            RaisedButton(
                color: Colors.green,
                onPressed: () {
                  String texto = loginController.text;
                  print(texto);

                },
                child: Text('Entrar'),
                
            ),
          ],
        ),
              ),
      ),
    );
  }
}