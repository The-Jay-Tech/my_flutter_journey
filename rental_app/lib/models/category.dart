import 'package:rental_app/styles/images.dart';

class RentModel {
  final String img;
  RentModel(this.img);
}

List<RentModel> rentCategory = [
  RentModel(AppImages.rentHouse),
  RentModel(AppImages.buyHouse),
  RentModel(AppImages.leaseHouse),
  RentModel(AppImages.rentSpace),
  RentModel(AppImages.buyLand),
  RentModel(AppImages.justBrowse),
];

class HouseModel {
  final String img;
  HouseModel(this.img);
}
List<HouseModel> housePic = [
  HouseModel(AppImages.exterior),
  HouseModel(AppImages.interiorr),
  HouseModel(AppImages.interior),
];
