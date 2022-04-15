import 'dart:convert';
import 'dart:io';
import 'package:http/io_client.dart';
import 'package:student_follow_app/models/student.dart';
import 'package:student_follow_app/models/token.dart';
import 'package:student_follow_app/models/urlAddress.dart';

class StudentController{
  Future<List<Student>> getFilterEssential() async{
    try{
      var data=<Student>[];
      var url=Uri.parse(UrlAddress().getFilterEssential+Token.userName);
      final ioc=new HttpClient();
      ioc.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      final http = new IOClient(ioc);

      final response= await http.get(url,headers: {
        HttpHeaders.authorizationHeader:"Bearer "+Token.accessToken
      });

      if(response.statusCode==200){
        var value=jsonDecode(response.body);
        //print(value);
        value.forEach((v){
          //print( v);
          //v["FamilyIncomeMoney"]=v["FamilyIncomeMoney"].toInt();
          //print( v["FamilyIncomeMoney"]);
          data.add(Student.fromJson(v));
          //print(data[0]);
        });
        //print(data.length);
        return data;
      }
      else{
        throw Exception('Bilgileri yüklerken problem Oluştu');
      }


    }catch(error){
      throw Exception(error);
    }
  }
}