import 'package:flutter/material.dart';
import 'package:student_follow_app/models/settingValue.dart';

// ignore: must_be_immutable
class InputSlider extends StatefulWidget{
  InputSlider({required this.min,required this.max, required this.value,required this.division,required this.textLabel,required this.list,required this.select});

  int min;
  int max;
  int value;
  int division;
  String textLabel;
  List <String> list;
  int select;


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InputSliderState();
  }

}

class InputSliderState extends State<InputSlider>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Slider(
            min:widget.min.toDouble(),
            max:widget.max.toDouble(),
            value:widget.value.toDouble(),
            divisions: widget.division,
            label: widget.value.toInt().toString(),
            onChanged: (double value){
              setState(() {
                widget.value=value.toInt();
                switch (widget.select){
                  case 0:
                    SettingValue.whitWhomLive=value.toInt();
                    break;
                  case 1:
                    SettingValue.howToGetSchool=value.toInt();
                    break;
                  case 2:
                    SettingValue.typeOfDisability=value.toInt();
                    break;
                  case 3:
                    SettingValue.siblingCount=value.toInt();
                    break;
                  case 4:
                    SettingValue.familyIncomeMoney=value.toInt();
                    break;
                  case 5:
                    SettingValue.rentOfHouse=value.toInt();
                    break;
                  case 6:
                    SettingValue.working=value.toInt();
                    break;
                  case 7:
                    SettingValue.outsideFromFamily=value.toInt();
                    break;
                  case 8:
                    SettingValue.haveOwnRoom=value.toInt();
                    break;
                  case 9:
                    SettingValue.cameFromAbroad=value.toInt();
                    break;
                  case 10:
                    SettingValue.scholarship=value.toInt();
                    break;
                  case 11:
                    SettingValue.scheck=value.toInt();
                    break;
                  case 12:
                    SettingValue.appliead=value.toInt();
                    break;
                }

              });
            },

        ),
        Text(
          widget.list.length==0?
          widget.textLabel + " : " +widget.value.toInt().toString():
          widget.textLabel + " : " + widget.list[widget.value.toInt()] ,
          style: TextStyle(color: Colors.green),
        ),
      ],
    );
  }
}


