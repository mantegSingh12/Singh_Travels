import 'package:flutter/material.dart';
import 'package:flutter_app/model/locationModel.dart';

class LatLongWidget extends StatelessWidget {
  final LocationModel location;

  const LatLongWidget({this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          location.latitude,
          style: TextStyle(color: Colors.yellow),
        ),
        Icon(
          Icons.location_on,
          color: Colors.white,
        ),
        Text(
          location.longitude,
          style: TextStyle(color: Colors.yellow),
        )
      ],
    );
  }
}
