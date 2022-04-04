import 'package:flutter/material.dart';
import 'package:student_follow_app/widgets/inputText.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState ();
  }
}

class LoginState extends State<Login>  {
  final _formKey=GlobalKey<FormState>();
  TextEditingController txtUserName=new TextEditingController();
  TextEditingController txtPassword=new TextEditingController();

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
            showlogo(),
            showEmail(),
            showPassword(),
            showLogin(),
          ],
        ),
      ),
    );
  }

  Widget showlogo(){
    return Hero(
        tag: "Logo",
        child:Padding(
         padding: EdgeInsets.fromLTRB(60, 10, 50, 50),
         child: CircleAvatar(
           backgroundColor: Colors.transparent,
           radius: 60,
           child: Image.asset("images/logo.png"),
         ), 
        ));
  }

  Widget showEmail(){
    return new Padding(
        padding: EdgeInsets.fromLTRB(0.0, 100, 0.0, 0.0),
        child:inputText(txtUserName,true,false,TextInputType.emailAddress,"Email Adresiniz") ,
    );
  }

  Widget showPassword(){
    return new Padding(
      padding: EdgeInsets.fromLTRB(0.0, 10, 0.0, 0.0),
      child:inputText(txtPassword,true,true,TextInputType.visiblePassword,"Şifreniz") ,
    );
  }

  Widget showLogin(){
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
      child: ElevatedButton(
          style:  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
          child: Text("Giriş"),
          onPressed: () {
            if(_formKey.currentState!.validate()){
              //submit();
              print("Tıklandı");
            }
          }
      ),
    );
  }

}