import 'package:get/get.dart';
import 'package:veggie_burguer_mobile/app/modules/auth/login/login_page.dart';

class AuthRouters {
  AuthRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: '/auth/login',
      page: () => const LoginPage(),
    )
  ];
}
