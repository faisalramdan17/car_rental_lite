import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core.dart';

class MainController extends GetxController {
  final pageCotroller = PageController();
  final animationDuration = const Duration(milliseconds: 350);
  List<BubbleBottomBarItem> navigationItems;

  @override
  void onInit() {
    navigationItems = NavigationService().getNavigationItemList();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    pageCotroller.dispose();
    Get.delete();
    print("[ MainController ] => onClose()");
    super.onClose();
  }
}
