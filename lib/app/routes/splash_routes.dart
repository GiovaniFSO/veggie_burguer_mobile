
import 'package:get/get.dart';
import 'package:veggie_burguer_mobile/app/modules/splash/splash_page.dart';

class SplashRoutes {
  
  SplashRoutes._();

  static final routers = <GetPage>[
    GetPage(name: '/', page: () => const SplashPage())
  ];
}