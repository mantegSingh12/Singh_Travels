import 'package:flutter/material.dart';
import 'package:flutter_app/model/locationModel.dart';
import 'package:flutter_app/widgets/detailedInfoWidget.dart';
import 'package:flutter_app/widgets/latLongWidget.dart';
import 'package:flutter_app/widgets/reviewsWidget.dart';

class DetailPage extends StatelessWidget {
  final LocationModel location;
  final Animation animation;

  const DetailPage({this.location, this.animation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('SINGH '), Text(' TRAVELS')],
        ),
        leading: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            // flex: 4,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                SizedBox.expand(
                  child: Hero(
                    tag: location.urlImage,
                    child: Image.asset(
                      location.urlImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: LatLongWidget(
                    location: location,
                  ),
                ),
              ],
            ),
          ),
          DetailedInfoWidget(
            location: location,
          ),
          Expanded(
            //flex: 5,
            child: ReviewsWidget(
              location: location,
              animation: animation,
            ),
          ),
        ],
      ),
    );
  }
}
