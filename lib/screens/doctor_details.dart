import 'package:doctor_app/models/doctor.dart';
import 'package:doctor_app/screens/screenTemplates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  Doctor doctor;

  DoctorDetails(this.doctor);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: appBar("Doctor Details"),
      bottomNavigationBar: bottomNavBar(),
      floatingActionButton: bottomNavBarBtn(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            //Doctor Card
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(//Doctor Data
                  width: size.width,
                  height: size.height / 9,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(doctor.urlPhoto),
                        radius: 35,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctor.name,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          doctor.speciality,
                          style: //
                              TextStyle(
                                  color: Color(0xff07da5f),
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            doctorStars(),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              doctor.rating.toString(),
                              style: TextStyle(
                                  fontSize: 18, color: Color(0x77000000)),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(thickness: 1),
            SizedBox(
              height: size.height/35,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Short Description",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 12,
                ),
                Text(doctor.shortDescription,
                    style: TextStyle(fontSize: 17, color: Color(0x77000000)))
              ],
            ),
            SizedBox(
                height: size.height/20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Location",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.add_location),
                    Text(doctor.address,
                        style:
                            TextStyle(fontSize: 17, color: Color(0x77000000)))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset('assets/images/locationImage.jpg')
                ,
                SizedBox(
                  height: size.height/35
                ),
                Container(
                  width: size.width/0.4,
                  height: 50,
                  child: RaisedButton(onPressed: (){},
                    child: Text("Request",style:
                      TextStyle(color: Colors.white),),
                    color: Color(0xff07da5f),shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(30.0)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget doctorStars() {
    List<Widget> stars = List();
    for (int i = 0; i < doctor.rating.round(); i++) {
      stars.add(Icon(
        Icons.star,
        color: Color(0xfffcd303),
      ));
    }
    return Row(
      children: stars,
    );
  }
}
