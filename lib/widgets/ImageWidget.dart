import 'package:flutter/material.dart';
import 'package:flutter_app/model/locationModel.dart';
import 'package:flutter_app/widgets/latLongWidget.dart';

class ImageWidget extends StatelessWidget {
  final LocationModel location;

  const ImageWidget({@required this.location, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: size.height * 0.5,
      width: size.width * 0.8,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.black54, blurRadius: 5, spreadRadius: 1)
        ], borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Stack(
          children: <Widget>[
            buildImage(),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buildTopText(),
                  LatLongWidget(location: location),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildImage() {
    return SizedBox.expand(
      child: Hero(
        tag: location.urlImage,
        child: Material(
          type: MaterialType.transparency,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: Image.asset(
              location.urlImage,
//          width: 500,
//          height: 500,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTopText() {
    return Text(
      location.name,
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
