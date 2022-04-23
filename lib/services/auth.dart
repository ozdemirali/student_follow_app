import 'dart:convert';
import 'dart:io';

import 'package:http/io_client.dart';
import 'package:student_follow_app/models/token.dart';
import 'package:student_follow_app/models/urlAddress.dart';

abstract class BaseAuth{
  Future getToken(String userName,String password);
}
class Auth implements BaseAuth{
  Future getToken(String userName,String password) async{
    try{
      print(userName+ " "+ password);
      var url=Uri.parse(UrlAddress().token);
      final ioc=new HttpClient();
      ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      http.post(url,body: {"userName":userName,"password":password,"grant_type":"password"}).then((response){
        print(response.statusCode);
        if(response.statusCode==200){
          Token.accessToken=jsonDecode(response.body)["access_token"];
          Token.userName=userName;
         //print(Token.accessToken);

        }

      }).catchError((onError){
        Token.error=onError;
        //print(onError);
        //print("Acces Token Hatası");
        //throw Exception("Acces Token Hatası");

      });

    } catch(e){
      Token.error=e.toString();
      //print(e);
      //throw Exception("Acces Token Hatası");
    }
  }
}