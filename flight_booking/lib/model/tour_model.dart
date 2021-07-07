import 'package:flight_booking/style/images.dart';

class TourModel {
  final String img;
  final String city;
  final String country;
  TourModel(this.img, this.city, this.country);
}

List<TourModel> tourData = [
  TourModel(AppImages.paris, 'Paris', 'France'),
  TourModel(AppImages.london, 'London', 'UK'),
  TourModel(AppImages.planeWing, 'Abuja', 'Nigeria'),
  TourModel(AppImages.london, 'America', 'USA'),
];
