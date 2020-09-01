import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController campoNome = TextEditingController();
  TextEditingController campoIdade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child:
            Column(
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Nome",
                      labelStyle: TextStyle(color: Colors.blue),),
                    controller: campoNome,
                    validator: (value){
                      if (value.isEmpty) {
                        return "Informe o nome";
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Idade",
                      labelStyle: TextStyle(color: Colors.blue),),
                    controller: campoIdade,
                    validator: (value){
                      if (value.isEmpty) {
                        return "Informe a Idade";
                      } else {
                        return null;
                      }
                    },
                  ),
                  RaisedButton(
                    child: Text("Postar"),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        setState(() {
                          campoNome.text = "Alexandre";
                        });
                      }
                    },
                  )
                ]),
            ),
          ),
          ),
    );
  }
}
