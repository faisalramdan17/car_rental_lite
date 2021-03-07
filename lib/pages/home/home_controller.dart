import 'package:get/get.dart';

import '../../core.dart';

class HomeController extends GetxController {
  List<Car> cars = [];
  List<Dealer> dealers = [];
  Car displayCar;

  @override
  void onInit() {
    super.onInit();
    cars = CarService().getCarList();
    dealers = DealerService().getDealerList();
    displayCar = cars[2];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
