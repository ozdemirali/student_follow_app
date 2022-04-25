
import 'package:flutter/material.dart';
import 'package:student_follow_app/models/student.dart';

showToInformation(BuildContext context,Student student){

  Widget okButton=Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
          child: ElevatedButton(
            style:  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
            child: Text("Tamam"),
            onPressed: (){
              Navigator.pop(context);
            },)
      ),
    ],
  );

  AlertDialog alert=AlertDialog(
    contentPadding: EdgeInsets.only(left: 5,right: 5),
    title: Text("Öğrenci Bilgileri"),
    shape:RoundedRectangleBorder( borderRadius: BorderRadius.all(Radius.circular(5.0))),
    content:Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
            title: Text(student.studentId),
            subtitle:Text("Tc Kimlik No"),
            ),
            ListTile(
              title: Text(student.nameAndSurname),
              subtitle:Text("Öğrenci Adı ve Soyadı") ,
            ),
            ListTile(
              title: Text(student.classroom + " - "+ student.number ),
              subtitle:Text(student.branch) ,
            ),
            ListTile(
              title: Text(student.address ),
              subtitle:Text("Öğrencinin Adresi") ,
            ),
            ListTile(
              title: Text(student.familyIncomeMoney.toString()+" TL" ),
              subtitle:Text("Ailesinin Geliri") ,
            ),
            ListTile(
              title: Text(student.guardian + " - "+student.guardianPhone ),
              subtitle:Text("Velisini Adı ve Soyadı - Telefonu") ,
            ),
            ListTile(
              title: Text(student.numberOfBrotherAndSister.toString() ),
              subtitle:Text("Kardeş Sayısı") ,
            ),
            ListTile(
              title: Text(student.typeOfDisability ),
              subtitle:Text("Özür Durumu") ,
            ),
            ListTile(
              title: Text(student.scheck==true?"Tabi":"Değil" ),
              subtitle:Text("Schek'e Tabi mi?") ,
            ),
            ListTile(
              title: Text(student.haveOwnRoom==true?"Var":"Yok" ),
              subtitle:Text("Kendi Odası Var m?") ,
            ),
            ListTile(
              title: Text(student.working==true?"Çalışıyor":"Çalışmıyor" ),
              subtitle:Text("Bir işte çalışıyor mu?") ,
            ),
            ListTile(
              title: Text(student.outsideFromFamily==true?"Var":"Yok" ),
              subtitle:Text("Aile dışında Evde Kalan var mı?") ,
            ),
            ListTile(
              title: Text(student.cameFromAbroad==true?"Geldi":"Gelmedi" ),
              subtitle:Text("Yurt dışından mı geldi?") ,
            ),
            ListTile(
              title: Text(student.scholarship==true?"Evet":"Hayır" ),
              subtitle:Text("Burslu mu?") ,
            ),
            ListTile(
              title: Text(student.homeHeating ),
              subtitle:Text("Ev ne ile ısınıyor ") ,
            ),
            ListTile(
              title: Text(student.whitWhomLive ),
              subtitle:Text("Kiminle Yaşıyor") ,
            ),
            ListTile(
              title: Text(student.howToGetSchool ),
              subtitle:Text("Okula Nasıl Geliyor") ,
            ),
          ],
        ),
      ),
    ) ,
    actions: [
      okButton,
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context){
        return alert;
      });
}