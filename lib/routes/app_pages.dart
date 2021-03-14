import 'package:get/get.dart';
import '../core.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.UPCOMING,
      page: () => ProVersionView(isBackAvailable: true),
    ),
  ];
}
