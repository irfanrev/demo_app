import 'package:get/get.dart';

import 'package:demo_app/app/modules/admin/bindings/admin_binding.dart';
import 'package:demo_app/app/modules/admin/views/admin_view.dart';
import 'package:demo_app/app/modules/home/bindings/home_binding.dart';
import 'package:demo_app/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN,
      page: () => AdminView(),
      binding: AdminBinding(),
    ),
  ];
}
