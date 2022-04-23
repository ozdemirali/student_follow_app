import 'package:flutter/material.dart';
import 'package:student_follow_app/models/token.dart';
import 'package:student_follow_app/services/auth.dart';

import 'home.dart';
import 'login.dart';
enum AuthStatus{
  Not_Logged_In,
  Logged_In,
}

class Root extends StatefulWidget{
  Root({required this.auth});

  final BaseAuth auth;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RootState();
  }

}

class RootState extends State<Root>{
  AuthStatus _authStatus=AuthStatus.Not_Logged_In;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _authStatus=Token.accessToken==""?AuthStatus.Not_Logged_In:AuthStatus.Logged_In;
  }

  void loginCallBack(){
   setState(() {
     _authStatus=AuthStatus.Logged_In;
   });
  }

  void logoutCallBack(){
    setState(() {
      _authStatus=AuthStatus.Not_Logged_In;
      Token.accessToken="";
      Token.userName="";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    switch (_authStatus){
      case AuthStatus.Not_Logged_In:
        return Login(
          auth: widget.auth,
          loginCallBack: loginCallBack,
        );
        break;
      case AuthStatus.Logged_In:
        return Home(
          logoutCallBack: logoutCallBack,
        );
    };
  }
}