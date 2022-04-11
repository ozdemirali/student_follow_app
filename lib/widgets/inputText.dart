import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

Widget inputText(TextEditingController _txtEditingController,
    bool _enable,bool _obscureText,
    TextInputType _txtInputType,
    String _label,
   ){
  return TextFormField(
    controller:_txtEditingController,
    enabled:_enable,
    obscureText:_obscureText,
    textCapitalization: TextCapitalization.words,
    keyboardType:_txtInputType ,
    decoration: InputDecoration(
      labelText: _label
    ),
    validator: (value){
      if(value==null || value.isEmpty){
        return "Bu alan boş bırakılmaz";
      }
      else if(_txtInputType==TextInputType.emailAddress){
        return !EmailValidator.validate(value)
            ? 'Geçerli Bir Email Giriniz.'
            : null;
      }
      return null;
    },
  );
}