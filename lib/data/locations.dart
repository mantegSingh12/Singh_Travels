import 'package:flutter_app/model/locationModel.dart';
import 'package:flutter_app/data/reviews.dart';

List<LocationModel> locations = [
  LocationModel(
    name: 'Taj Mahal',
    urlImage: 'assets/tajMahal.jpg',
    addressLine1: 'Agra',
    addressLine2: 'India',
    longitude: '27.1751° N',
    latitude: '78.0421° E',
    starRating: 4,
    reviews: Reviews.allReviews,
  ),
  LocationModel(
      name: 'Golden Temple',
      urlImage: 'assets/goldenTemple.jpg',
      addressLine1: 'Amritsar',
      addressLine2: 'India',
      longitude: '31.6200° N',
      latitude: '74.8765° E',
      starRating: 4,
      reviews: Reviews.allReviews),
  LocationModel(
      name: 'Varkala Beach',
      urlImage: 'assets/varkalaBeach.jpg',
      addressLine1: 'Kerala',
      addressLine2: 'India',
      longitude: '8.7356° N',
      latitude: '76.7032° E',
      starRating: 4,
      reviews: Reviews.allReviews),
  LocationModel(
      name: 'Athirappilly Falls',
      urlImage: 'assets/athirappillyFalls.jpg',
      addressLine1: 'kerala',
      addressLine2: 'India',
      longitude: '10.2908° N',
      latitude: '76.5156° E',
      starRating: 3,
      reviews: Reviews.allReviews),
  LocationModel(
      name: 'Jal Mahal',
      urlImage: 'assets/jalMahal.jpg',
      addressLine1: 'Jaipur',
      addressLine2: 'India',
      longitude: '26.9535° N',
      latitude: '75.8462° E',
      starRating: 4,
      reviews: Reviews.allReviews),
];
