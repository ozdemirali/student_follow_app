
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState ();
  }
}

class LoginState extends State<Login>  {
  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text("Öğrenci Takip"),
      ),
      body: showForm(),
    );
  }

  Widget showForm(){
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: new ListView(
          shrinkWrap: true,
          children: [
            logo(),
            Text("Giriş"),
          ],
        ),
      ),
    );
  }

  Widget logo(){
    return Hero(
        tag: "Lgo", 
        child:Padding(
         padding: EdgeInsets.fromLTRB(60, 0, 50, 50), 
         child: CircleAvatar(
           backgroundColor: Colors.transparent,
           radius: 60,
           child: Image.asset("images/logo.png"),
         ), 
        ));
  }
  
}