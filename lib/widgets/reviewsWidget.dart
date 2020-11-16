import 'package:flutter/material.dart';
import 'package:flutter_app/data/locations.dart';
import 'package:flutter_app/model/locationModel.dart';
import 'package:flutter_app/model/reviewModel.dart';

class ReviewsWidget extends StatelessWidget {
  final LocationModel location;
  final Animation animation;

  const ReviewsWidget({this.location, this.animation});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final review = location.reviews[index];
          return AnimatedBuilder(
            animation: animation,
            builder: (context, child) => FadeTransition(
              opacity: CurvedAnimation(
                  parent: animation,
                  curve: Interval(0.2, 1, curve: Curves.easeInExpo)),
              child: child,
            ),
            child: buildReview(review),
          );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: location.reviews.length);
  }

  Widget buildReview(ReviewModel review) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Hero(
                tag: review.urlImage + locations.indexOf(location).toString(),
                child: Material(
                  type: MaterialType.transparency,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage(review.urlImage),
                  ),
                ),
              ),
              Text(
                review.username,
                style: TextStyle(fontSize: 17),
              ),
              Text(
                review.date,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              Icon(
                Icons.thumb_up,
                size: 14,
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            review.description,
            style: TextStyle(
              color: Colors.black26,
            ),
          ),
        ],
      ),
    );
  }
}
