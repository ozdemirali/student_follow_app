import 'package:flutter/material.dart';
import 'package:student_follow_app/models/token.dart';
import 'package:student_follow_app/services/auth.dart';
import 'package:student_follow_app/widgets/inputText.dart';

class Login extends StatefulWidget{
  Login({required this.auth, required this.loginCallBack});

  final BaseAuth auth;
  final VoidCallback loginCallBack;
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
  late bool isLoading=false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text("Öğrenci Takip"),
      ),
      body: Stack(
        children: [
          showForm(),
          showCircularProgress()
        ],
      ),
    );
  }

  Widget showCircularProgress(){
    if(isLoading){
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Container(
      height: 0.0,
      width: 0.0,
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
            showLogo(),
            showEmail(),
            showPassword(),
            showErrorMessage(),
            showLogin(),
          ],
        ),
      ),
    );
  }

  Widget showLogo(){
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
              submit();
             // print("Tıklandı");
            }
          }
      ),
    );
  }

  Widget showErrorMessage(){
    if(Token.error.length>0 && Token.error!=""){
      return new Padding(
        padding:const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
        child: new Text(
          Token.error,
          style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
              height: 1.0,
              fontWeight: FontWeight.bold),
        ),
      );
    }else{
      return new Container(
        height: 0.0,
      );
    }
  }

  submit() async{
    setState(() {
      isLoading=true;
    });
    try{
     widget.auth.getToken(txtUserName.text, txtPassword.text);
      await Future.delayed(Duration(seconds: 1));
     // print("delay");
      //print(Token.accessToken);

      setState(() {
        isLoading=false;
      });
      if(Token.accessToken!=""){
        //print("ttt");
        //print("--->>> "+Token.accessToken);
        widget.loginCallBack();
      }
    } catch(e){
      setState(() {
        isLoading=false;
      });
    }
  }
}