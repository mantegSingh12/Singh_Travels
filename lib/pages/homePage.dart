import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/locationsWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[800],
      appBar: buildAppbar,
      body: LocationsWidget(),
      bottomNavigationBar: buildBottomNavigationBar,
    );
  }

  final buildAppbar = AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(
        icon: Icon(
          Icons.pin_drop,
          color: Colors.white,
        ),
      ),
    ],
    elevation: 0,
    leading: IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: null),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          ' SINGH',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          ' TRAVELS',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        )
      ],
    ),
  );
  final buildBottomNavigationBar = BottomNavigationBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          title: Text(''),
          icon: Icon(Icons.pin_drop),
        ),
        BottomNavigationBarItem(
          title: Text(''),
          icon: Icon(Icons.add_location),
        ),
        BottomNavigationBarItem(
          title: Text(''),
          icon: Icon(Icons.person_outline),
        )
      ]);
}
