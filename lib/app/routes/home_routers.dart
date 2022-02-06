
import 'package:get/get.dart';
import 'package:veggie_burguer_mobile/app/modules/home/home_bindings.dart';
import 'package:veggie_burguer_mobile/app/modules/home/home_page.dart';

class HomeRouters {
  HomeRouters._();

  static final routers = <GetPage>[
    GetPage(name: '/home', binding: HomeBindings(), page: () => const HomePage())
  ];


}