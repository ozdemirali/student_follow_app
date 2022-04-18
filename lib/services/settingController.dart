import 'dart:convert';
import 'dart:io';

import 'package:http/io_client.dart';
import 'package:student_follow_app/models/setting.dart';
import 'package:student_follow_app/models/token.dart';
import 'package:student_follow_app/models/urlAddress.dart';

class SettingController {

  Future<Setting> getFilterData() async{
    try{
      var url=Uri.parse(UrlAddress().getFilterData+Token.userName);
      final ioc=new HttpClient();
      ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      final http=new IOClient(ioc);
      final response=await http.get(url,headers: {
        HttpHeaders.authorizationHeader:"Bearer "+Token.accessToken
      });
      if(response.statusCode==200){
        var value=jsonDecode(response.body);
        //print(value);
        value["FamilyIncomeMoney"]=value["FamilyIncomeMoney"].toInt();
        //v["FamilyIncomeMoney"]=v["FamilyIncomeMoney"].toInt();
        //print(value);
        return Setting.fromJson(value);
      }
      else{
        throw Exception("data hatası");
      }

    }catch(e){
      throw Exception(e);
    }
  }

  Future postFilterData(Setting setting) async{
    try{
      var url=Uri.parse(UrlAddress().postFilterData);
      final ioc=new HttpClient();
      ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);
      final response=await http.post(url,headers: {
        HttpHeaders.authorizationHeader:"Bearer "+Token.accessToken,
        HttpHeaders.contentTypeHeader:"application/json"
      },body: jsonEncode(setting.toJson()));

    }catch (error){
      throw Exception(error);
    }
  }
}