import 'package:flutter/material.dart';
import 'package:student_follow_app/models/setting.dart';
import 'package:student_follow_app/models/settingValue.dart';
import 'package:student_follow_app/models/token.dart';
import 'package:student_follow_app/services/settingController.dart';
import 'package:student_follow_app/widgets/inputSlider.dart';

double test=1;
class ListSetting extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListSettingState();
  }
}

class ListSettingState extends State<ListSetting> {
  final List<String> _whitWhomLive = <String>['Tek Başına', 'Annesi', 'Babası', 'Anne ve Babası', 'Akrabası'];
  final List<String> _howToGetSchool = <String>['Yaya', 'Bisiklet', 'Motorsiklet', 'Özel Araç', 'Toplu Taşıma'];
  final List<String> _typeOfDisability = <String>['Engelsiz', 'Zihinsel', 'İşitme', 'Görme', 'Ortopedik',
    'Dil ve Konuşma','Ruhsal ve Duygusal','Süreğen Hastalık','Dikkat Eksikliği ve Hiperaktivite Bozukuluğu' ];
  final List<String> _trueFalse=<String>['Hayır','Evet'];
  bool button=true;

  late Future<Setting> setting;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setting=SettingController().getFilterData();

  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(
        padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
        child: FutureBuilder<Setting>(
          future: setting,
          builder: (context,snapshot){
            if(snapshot.hasData){
              //print(snapshot.data!.userName);
              if(button){
               SettingValue.whitWhomLive=snapshot.data!.whitWhomLive-1;
               SettingValue.howToGetSchool=snapshot.data!.howToGetSchool-1;
               SettingValue.typeOfDisability=snapshot.data!.typeOfDisability-1;
               SettingValue.siblingCount=snapshot.data!.siblingCount;
               SettingValue.familyIncomeMoney=snapshot.data!.familyIncomeMoney;
               SettingValue.rentOfHouse=snapshot.data!.rentOfHouse?1:0;
               SettingValue.working=snapshot.data!.working?1:0;
               SettingValue.outsideFromFamily=snapshot.data!.outsideFromFamily?1:0;
               SettingValue.haveOwnRoom=snapshot.data!.haveOwnRoom?1:0;
               SettingValue.cameFromAbroad=snapshot.data!.cameFromAbroad?1:0;
               SettingValue.scholarship=snapshot.data!.scholarship?1:0;
               SettingValue.scheck=snapshot.data!.scheck?1:0;
               SettingValue.appliead=snapshot.data!.applied?1:0;
               button=false;

              }
              return  ListView(
                shrinkWrap: true,
                children: [
                  InputSlider(
                   min: 0,
                   max: 4,
                   value: SettingValue.whitWhomLive,
                   division: 4,
                   textLabel: "Kiminle Yaşıyor",
                   list: _whitWhomLive,
                   select: 0,
                  ),

                  InputSlider(
                      min: 0,
                      max: 4,
                      value: SettingValue.howToGetSchool,
                      division: 4,
                      textLabel: "Okula Nasıl Geliyor",
                      list: _howToGetSchool,
                      select: 1),

                  InputSlider(
                      min: 0,
                      max: 4,
                      value: SettingValue.typeOfDisability,
                      division: 4,
                      textLabel: "Ozür Durumu",
                      list: _typeOfDisability,
                      select: 2),

                  InputSlider(
                      min: 1,
                      max: 10,
                      value: SettingValue.siblingCount,
                      division: 9,
                      textLabel: "Kardeş Sayısı",
                      list: [],
                      select: 3),

                  InputSlider(
                      min: 0,
                      max: 10000,
                      value: SettingValue.familyIncomeMoney,
                      division: 10,
                      textLabel: "Ailenin Geliri",
                      list: [],
                      select: 4),

                  InputSlider(
                      min: 0,
                      max: 1,
                      value: SettingValue.rentOfHouse,
                      division: 1,
                      textLabel: "Evi Kira mı",
                      list: _trueFalse,
                      select: 5),

                  InputSlider(
                      min: 0,
                      max: 1,
                      value: SettingValue.working,
                      division: 1,
                      textLabel: "Çalışıyor mu",
                      list: _trueFalse,
                      select: 6),

                  InputSlider(
                      min: 0,
                      max: 1,
                      value: SettingValue.outsideFromFamily,
                      division: 1,
                      textLabel: "Aile Dışından Birisi Varmı",
                      list: _trueFalse,
                      select: 7),

                  InputSlider(
                      min: 0,
                      max: 1,
                      value: SettingValue.haveOwnRoom,
                      division: 1,
                      textLabel: "Kendi Odası Var mı",
                      list: _trueFalse,
                      select: 8),

                  InputSlider(
                      min: 0,
                      max: 1,
                      value: SettingValue.cameFromAbroad,
                      division: 1,
                      textLabel: "Yurt Dışından Gelidi mi",
                      list: _trueFalse,
                      select: 9),


                  InputSlider(
                      min: 0,
                      max: 1,
                      value: SettingValue.scholarship,
                      division: 1,
                      textLabel: "Burslu mu",
                      list: _trueFalse,
                      select: 10),

                  InputSlider(
                      min: 0,
                      max: 1,
                      value: SettingValue.scheck,
                      division: 1,
                      textLabel: "Kuruma Tabi mi",
                      list: _trueFalse,
                      select: 11),

                  InputSlider(
                      min: 0,
                      max: 1,
                      value: SettingValue.appliead,
                      division: 1,
                      textLabel: "Uygulansın mı",
                      list: _trueFalse,
                      select: 12),




                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0),
                        child: ElevatedButton(
                            style:  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
                            child: Text("Kaydet"),
                            onPressed: () {
                              var setting=Setting(
                                  userName: Token.userName,
                                  whitWhomLive: SettingValue.whitWhomLive+1,
                                  howToGetSchool: SettingValue.howToGetSchool+1,
                                  typeOfDisability:SettingValue.typeOfDisability+1,
                                  siblingCount: SettingValue.siblingCount,
                                  familyIncomeMoney: SettingValue.familyIncomeMoney,
                                  rentOfHouse: intToBool (SettingValue.rentOfHouse),
                                  working: intToBool(SettingValue.working),
                                  outsideFromFamily: intToBool( SettingValue.outsideFromFamily),
                                  haveOwnRoom: intToBool(SettingValue.haveOwnRoom),
                                  cameFromAbroad: intToBool(SettingValue.cameFromAbroad),
                                  scholarship: intToBool(SettingValue.scholarship),
                                  scheck: intToBool(SettingValue.scheck),
                                  applied: intToBool(SettingValue.appliead));
                                  //print(setting.toJson());
                                 SettingController().postFilterData(setting);

                              //print(setting.toJson());
                            }
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
            else{
              return Text("Data gelmedi");
            }
          },
        ),


    );
  }

  bool intToBool(int a) => a == 0 ? false : true;
}