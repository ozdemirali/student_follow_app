import 'package:flutter/material.dart';

class Setting extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingState();
  }
}

class SettingState extends State<Setting> {
  final List<String> _whitWhomLive = <String>['Tek Başına', 'Annesi', 'Babası', 'Anne ve Babası', 'Akrabası'];
  final List<String> _howToGetSchool = <String>['Yaya', 'Bisiklet', 'Motorsiklet', 'Özel Araç', 'Toplu Taşıma'];
  final List<String> _typeOfDisability = <String>['Engelsiz', 'Zihinsel', 'İşitme', 'Görme', 'Ortopedik',
                                                  'Dil ve Konuşma','Ruhsal ve Duygusal','Süreğen Hastalık','Dikkat Eksikliği ve Hiperaktivite Bozukuluğu' ];
  final List<String> _trueFalse=<String>['Hayır','Evet'];


  int _whitWhomLiveValue=1;
  String _whitWhomLiveStatus="Tek Başına";

  int _howToGetSchoolValue=1;
  String _howToGetSchoolStatus="Yaya";

  int _typeOfDisabilityValue=1;
  String _typeOfDisabilityStatus="Engelsiz";

  int _siblingCountValue=1;
  int _familyIncomeMoneyValue=1000;

  int _rentOfHouseValue=0;
  String _rentOfHouseStatus="Hayır";

  int _workingValue=0;
  String _workingStatus="Hayır";

  int _outsideFromFamilyValue=0;
  String _outsideFromFamilyStatus="Hayır";

  int _haveOwnRoomValue=0;
  String _haveOwnRoomStatus="Hayır";

  int _cameFromAbroadValue=0;
  String _cameFromAbroadStatus="Hayır";

  int _scheckValue=0;
  String _scheckStatus="Hayır";

  int _isDeletedValue=0;
  String _isDeletedStatus="Hayır";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
      child: ListView(
        shrinkWrap: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                  min: 1,
                  max:5,
                  value:_whitWhomLiveValue.toDouble(),
                  divisions: 5,
                  label: _whitWhomLiveValue.toString(),
                  onChanged: (value){
                    setState(() {
                      _whitWhomLiveValue=value.toInt();
                      _whitWhomLiveStatus=_whitWhomLive[_whitWhomLiveValue-1];
                      print(_whitWhomLiveStatus);

                    });
                  }),
              Text(
                'Kiminle Yaşıyor : $_whitWhomLiveStatus ',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ) ,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                  min: 1,
                  max:5,
                  value:_howToGetSchoolValue.toDouble(),
                  divisions: 5,
                  label: _howToGetSchoolValue.toString(),
                  onChanged: (value){
                    setState(() {
                      _howToGetSchoolValue=value.toInt();
                      _howToGetSchoolStatus=_howToGetSchool[_howToGetSchoolValue-1];
                      //print(_whitWhomLiveStatus);

                    });
                  }),
              Text(
                'Okula Nasıl Geliyor : $_howToGetSchoolStatus ',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ) ,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                  min: 1,
                  max:9,
                  value:_typeOfDisabilityValue.toDouble(),
                  divisions: 5,
                  label: _typeOfDisabilityValue.toString(),
                  onChanged: (value){
                    setState(() {
                      _typeOfDisabilityValue=value.toInt();
                      _typeOfDisabilityStatus=_typeOfDisability[_typeOfDisabilityValue-1];
                      //print(_whitWhomLiveStatus);

                    });
                  }),
              Text(
                'Özür Durumu : $_typeOfDisabilityStatus ',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ) ,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                  min: 1,
                  max:9,
                  value:_siblingCountValue.toDouble(),
                  divisions: 5,
                  label: _siblingCountValue.toString(),
                  onChanged: (value){
                    setState(() {
                      _siblingCountValue=value.toInt();
                     // _typeOfDisabilityStatus=_typeOfDisability[_typeOfDisabilityValue-1];
                      //print(_whitWhomLiveStatus);

                    });
                  }),
              Text(
                'Kardeş Sayısı : $_siblingCountValue ',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ) ,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                  min: 0,
                  max:10000,
                  value:_familyIncomeMoneyValue.toDouble(),
                  divisions: 10,
                  label: _familyIncomeMoneyValue.toString(),
                  onChanged: (value){
                    setState(() {
                      _familyIncomeMoneyValue=value.toInt();
                      // _typeOfDisabilityStatus=_typeOfDisability[_typeOfDisabilityValue-1];
                      //print(_whitWhomLiveStatus);

                    });
                  }),
              Text(
                'Ailenin Geliri : $_familyIncomeMoneyValue TL ',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ) ,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                  min: 0,
                  max:1,
                  value:_rentOfHouseValue.toDouble(),
                  divisions: 1,
                  label: _rentOfHouseValue.toString(),
                  onChanged: (value){
                    setState(() {
                      _rentOfHouseValue=value.toInt();
                      _rentOfHouseStatus=_trueFalse[_rentOfHouseValue];
                      //print(_whitWhomLiveStatus);

                    });
                  }),
              Text(
                'Evi Kira mı : $_rentOfHouseStatus',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ) ,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                  min: 0,
                  max:1,
                  value:_workingValue.toDouble(),
                  divisions: 1,
                  label: _workingValue.toString(),
                  onChanged: (value){
                    setState(() {
                      _workingValue=value.toInt();
                      _workingStatus=_trueFalse[_workingValue];
                      //print(_whitWhomLiveStatus);

                    });
                  }),
              Text(
                'Çalışıyor mu : $_workingStatus',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ) ,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                  min: 0,
                  max:1,
                  value:_outsideFromFamilyValue.toDouble(),
                  divisions: 1,
                  label: _outsideFromFamilyValue.toString(),
                  onChanged: (value){
                    setState(() {
                      _outsideFromFamilyValue=value.toInt();
                      _outsideFromFamilyStatus=_trueFalse[_outsideFromFamilyValue];
                      //print(_whitWhomLiveStatus);

                    });
                  }),
              Text(
                'Aile Dışından Birisi Var mı : $_outsideFromFamilyStatus',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                  min: 0,
                  max:1,
                  value:_haveOwnRoomValue.toDouble(),
                  divisions: 1,
                  label: _haveOwnRoomValue.toString(),
                  onChanged: (value){
                    setState(() {
                      _haveOwnRoomValue=value.toInt();
                      _haveOwnRoomStatus=_trueFalse[_haveOwnRoomValue];
                      //print(_whitWhomLiveStatus);

                    });
                  }),
              Text(
                'Kendi Odası Var mı : $_haveOwnRoomStatus',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                  min: 0,
                  max:1,
                  value:_cameFromAbroadValue.toDouble(),
                  divisions: 1,
                  label: _cameFromAbroadValue.toString(),
                  onChanged: (value){
                    setState(() {
                      _cameFromAbroadValue=value.toInt();
                      _cameFromAbroadStatus=_trueFalse[_cameFromAbroadValue];
                      //print(_whitWhomLiveStatus);

                    });
                  }),
              Text(
                'Yurt Dışardan mı Geldi : $_cameFromAbroadStatus',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                  min: 0,
                  max:1,
                  value:_scheckValue.toDouble(),
                  divisions: 1,
                  label: _scheckValue.toString(),
                  onChanged: (value){
                    setState(() {
                      _scheckValue=value.toInt();
                      _scheckStatus=_trueFalse[_scheckValue];
                      //print(_whitWhomLiveStatus);

                    });
                  }),
              Text(
                'Kuruma tabi mi : $_scheckStatus',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Slider(
                  min: 0,
                  max:1,
                  value:_isDeletedValue.toDouble(),
                  divisions: 1,
                  label: _isDeletedValue.toString(),
                  onChanged: (value){
                    setState(() {
                      _isDeletedValue=value.toInt();
                      _isDeletedStatus=_trueFalse[_isDeletedValue];
                      //print(_whitWhomLiveStatus);

                    });
                  }),
              Text(
                'Uygulansın mı : $_isDeletedStatus',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 0.0),
                child: ElevatedButton(
                    style:  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
                    child: Text("Kaydet"),
                    onPressed: () {
                      print("Kaydet");
                    }
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}