import 'package:flutter/material.dart';
import 'package:flutter_app/data/locations.dart';
import 'package:flutter_app/widgets/particularLocationWidget.dart';

class LocationsWidget extends StatefulWidget {
  @override
  _LocationsWidgetState createState() => _LocationsWidgetState();
}

class _LocationsWidgetState extends State<LocationsWidget> {
  final pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView.builder(
            itemCount: locations.length,
            controller: pageController,
            itemBuilder: (context, index) {
              final location = locations[index];
              return ParticularLocationWidget(
                location: location,
              );
            },
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
          ),
        ),
        Text(
          '${pageIndex + 1}/${locations.length}',
          style: TextStyle(color: Colors.white70),
        ),
        SizedBox(height: 12)
      ],
    );
  }
}
