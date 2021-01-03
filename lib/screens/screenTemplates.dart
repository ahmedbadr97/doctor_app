import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
int navSelectedItem=0;
Widget appBar(String title) {
  return AppBar(
    title: Text(title,
      style: TextStyle(
          color: Colors.white
      ),),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
          icon: Icon(Icons.workspaces_filled),
          onPressed: () {},
          color: Colors.white)
    ],
  );
}
Widget bottomNavBar() {

  return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: navSelectedItem,
      onTap: (index) {
        setState() {
          navSelectedItem = index;
        }
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notification_important_sharp),
            label: "Notification"),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Schedule"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "Profile")

      ]);
}
Widget bottomNavBarBtn()
{
  return FloatingActionButton(
    child :Icon(Icons.add),
    backgroundColor: Color(0xff07da5f),
  );
}