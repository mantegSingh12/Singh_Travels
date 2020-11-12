import 'package:flutter/material.dart';
import 'package:flutter_app/model/locationModel.dart';
import 'package:flutter_app/pages/detailPage.dart';
import 'package:flutter_app/widgets/ImageWidget.dart';
import 'package:flutter_app/widgets/expandedContentWidget.dart';

class ParticularLocationWidget extends StatefulWidget {
  final LocationModel location;

  const ParticularLocationWidget({@required this.location});

  @override
  _ParticularLocationWidgetState createState() =>
      _ParticularLocationWidgetState();
}

class _ParticularLocationWidgetState extends State<ParticularLocationWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          AnimatedPositioned(
            child: ExpandedContentWidget(
              location: widget.location,
            ),
            duration: Duration(milliseconds: 100),
            height: isExpanded ? size.height * 0.6 : size.height * 0.5,
            width: isExpanded ? size.width * 0.78 : size.width * 0.7,
            bottom: isExpanded ? 40 : 100,
          ),
          AnimatedPositioned(
            child: GestureDetector(
              child: ImageWidget(location: widget.location),
              onPanUpdate: onPanUpdate,
              onTap: openDetailPage,
            ),
            duration: Duration(milliseconds: 300),
            bottom: isExpanded ? 150 : 100,
          )
        ],
      ),
    );
  }

  void openDetailPage() {
    if (!isExpanded) {
      setState(() {
        isExpanded = true;
      });
    }
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondAnimation) {
//        final curvedAnimation = CurvedAnimation(
//            parent: animation, curve: Interval(0, 0.5));
          return DetailPage(location: widget.location, animation: animation);
        },
        transitionsBuilder: (context, animation, secondAnimation, child) {
          return FadeTransition(
            child: child,
            opacity: CurvedAnimation(
              parent: animation,
              curve: Interval(0, 0.5),
            ),
          );
        },
        transitionDuration: Duration(seconds: 1),
      ),
    );
  }

  void onPanUpdate(DragUpdateDetails dragUpdateDetails) {
    if (dragUpdateDetails.delta.dy < 0)
      setState(() {
        isExpanded = true;
      });
    else if (dragUpdateDetails.delta.dy > 0)
      setState(() {
        isExpanded = false;
      });
  }
}
