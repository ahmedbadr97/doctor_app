import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/DoctorList.dart';

void main()
{
  runApp(MaterialApp(
    home: DoctorList(),
    theme:ThemeData(
      primaryColor: Color(0xff07da5f) //ff for transparecy
    )

  ));
  
}
