import 'package:flutter/material.dart';
import 'package:flutter_app/model/locationModel.dart';
import 'package:flutter_app/data/locations.dart';
import 'package:flutter_app/widgets/starsWidget.dart';

class ExpandedContentWidget extends StatelessWidget {
  final LocationModel location;

  const ExpandedContentWidget({this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Hero(
              tag: location.name + location.addressLine1,
              child: Text(location.addressLine1)),
          SizedBox(
            height: 8.0,
          ),
          buildAddressRating(),
          SizedBox(
            height: 12.0,
          ),
          buildReview()
        ],
      ),
    );
  }

  Widget buildAddressRating() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Hero(
          tag: location.name + location.addressLine2,
          child: Material(
            type: MaterialType.transparency,
            child: Text(
              location.addressLine2,
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ),
        Hero(
            tag: location.name + location.starRating.toString(),
            child: Material(
                type: MaterialType.transparency,
                child: StarsWidget(stars: location.starRating)))
      ],
    );
  }

  Widget buildReview() {
    return Row(
      children: location.reviews.map((review) {
        final pageIndex = locations.indexOf(location);

        return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Hero(
              tag: review.urlImage + pageIndex.toString(),
              child: Material(
                type: MaterialType.transparency,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.black12,
                  backgroundImage: AssetImage(review.urlImage),
                ),
              ),
            ));
      }).toList(),
    );
  }
}
