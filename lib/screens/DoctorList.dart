

import 'package:doctor_app/models/doctor.dart';
import 'package:doctor_app/screens/doctor_details.dart';
import 'package:doctor_app/screens/screenTemplates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorList extends StatefulWidget {


  @override
  State createState() =>_DoctorListState();


}
class _DoctorListState extends State<DoctorList>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        appBar: appBar("Doctor Details"),
        bottomNavigationBar: bottomNavBar(),
        floatingActionButton: bottomNavBarBtn(),
        body: ListView(
            children:
            doctors.map((e) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    width: size.width,
                    height: size.height / 5,
                    child: doctorCard(e)
                ),
              );
            }).toList()
        )
    );
  }

  Widget doctorCard(Doctor doctor) {
    return
      GestureDetector(
        onTap: ()
        {
          Navigator.of(context).push(MaterialPageRoute(builder:(_) =>DoctorDetails(doctor)));
        },
        child: Card(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(doctor.urlPhoto),
                  radius: 65,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(doctor.name,
                        style: TextStyle(
                          fontSize: 20,

                        ),),
                      Icon(Icons.star, color: Color(0xffffd500),),
                      Text(doctor.rating.toString(), style:
                      TextStyle(
                          fontSize: 18,
                          color: Color(0x77000000)
                      ),)
                    ],
                  ),
                  Text(doctor.speciality, style: //
                  TextStyle(
                      color: Color(0xff07da5f),
                      fontSize: 20,
                      fontStyle: FontStyle.italic
                  ),),
                  Row(
                    children: [
                      Icon(Icons.add_location),
                      Text(doctor.address, //miami,Alexandar
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0x77000000)
                          )
                      )
                    ],
                  )
                ],
              )

            ],
          ),

        ),
      );
  }

}
