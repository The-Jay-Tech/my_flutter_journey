import 'package:rental_app/styles/images.dart';

class RentModel {
  final String img;
  RentModel(this.img);
}

List<RentModel> rentCategory = [
  RentModel(AppImages.rentHouse),
  RentModel(AppImages.buyHouse),
  RentModel(AppImages.leaseHouse),
  RentModel(AppImages.buyLand),
];
