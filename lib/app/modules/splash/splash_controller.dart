import 'package:get/get.dart';
import 'package:veggie_burguer_mobile/app/core/services/auth_service.dart';

class SplashController extends GetxController {
  checkLogged() {
    Get.putAsync(() => AuthService().init());
  } 
}