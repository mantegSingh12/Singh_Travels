import 'package:flutter_app/model/reviewModel.dart';

class LocationModel {
  final String name;
  final String urlImage;
  final String addressLine1;
  final String addressLine2;
  final String latitude;
  final String longitude;
  final int starRating;
  final List<ReviewModel> reviews;

  LocationModel(
      {this.name,
      this.urlImage,
      this.addressLine1,
      this.addressLine2,
      this.starRating,
      this.latitude,
      this.longitude,
      this.reviews});
}
