import 'package:flutter/material.dart';
import 'package:flutter_app/model/locationModel.dart';
import 'package:flutter_app/widgets/starsWidget.dart';

class DetailedInfoWidget extends StatelessWidget {
  final LocationModel location;

  const DetailedInfoWidget({@required this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Hero(
              tag: location.addressLine1 + location.name,
              child: Material(
                  type: MaterialType.transparency,
                  child: Text(location.addressLine1))),
          SizedBox(
            height: 8,
          ),
          Hero(
              tag: location.addressLine2 + location.name,
              child: Material(
                  type: MaterialType.transparency,
                  child: Text(location.addressLine2))),
          SizedBox(
            height: 8,
          ),
          Hero(
              tag: location.name + location.starRating.toString(),
              child: Material(
                  type: MaterialType.transparency,
                  child: StarsWidget(stars: location.starRating)))
        ],
      ),
    );
  }
}
