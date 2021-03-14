import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../../core.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildHeader(),
                buildAvailableCars(),
                buildTopDeals(),
                buildTopDealers(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildAppBar(),
          SizedBox(height: 22),
          CarImagesWidget(images: controller.displayCar.images),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarNameWidget(
                  model: controller.displayCar.model,
                  brand: controller.displayCar.brand,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        "My Garage",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward,
                        size: 23,
                        color: kPrimaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 90,
            child: Stack(
              children: [
                CircularStepProgressIndicator(
                  padding: 0,
                  currentStep: 77,
                  totalSteps: 100,
                  selectedStepSize: 4,
                  width: 80,
                  height: 80,
                  startingAngle: 2.3,
                  selectedColor: Colors.yellow[600],
                  unselectedColor: Colors.white,
                  roundedCap: (_, __) => true,
                  child: Center(
                    child: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage:
                          AssetImage("assets/images/users/faisal-ramdan.jpg"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Badge(
                    shape: BadgeShape.square,
                    animationType: BadgeAnimationType.scale,
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2.2),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    badgeColor: Colors.yellow[600],
                    borderRadius: BorderRadius.circular(13),
                    elevation: 0,
                    badgeContent: Text(
                      "Gold",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2, right: 3),
                      child: Text(
                        "IDR",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ),
                    Text(
                      "17,7jt",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ],
                ),
              ),
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 23,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildAvailableCars() {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.UPCOMING),
      child: Padding(
        padding: EdgeInsets.only(top: 20, right: 16, left: 16),
        child: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          padding: EdgeInsets.all(24),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Available Cars",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Long term and short term",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                height: 50,
                width: 50,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTopDeals() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "TOP DEALS",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.UPCOMING),
                child: Row(
                  children: [
                    Text(
                      "More",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 280,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: controller.cars
                .map((car) => GestureDetector(
                    onTap: () => Get.toNamed(Routes.UPCOMING),
                    child: buildCar(car, controller.cars.indexOf(car))))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget buildTopDealers() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "TOP DEALERS",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.UPCOMING),
                child: Row(
                  children: [
                    Text(
                      "More",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: kPrimaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 150,
          margin: EdgeInsets.only(bottom: 16),
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: controller.dealers
                .map((dealer) =>
                    buildDealer(dealer, controller.dealers.indexOf(dealer)))
                .toList(),
          ),
        ),
      ],
    );
  }
}
