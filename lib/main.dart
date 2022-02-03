import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veggie_burguer_mobile/app/core/ui/veggie_ui.dart';
import 'package:veggie_burguer_mobile/app/routes/auth_routers.dart';
import 'package:veggie_burguer_mobile/app/routes/splash_routes.dart';

void main() {
  runApp(const VeggieBurguerMainApp());
}

class VeggieBurguerMainApp extends StatelessWidget {
  const VeggieBurguerMainApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Veggie Burger',
      theme: VeggieUi.theme,
      getPages: [
        ...SplashRoutes.routers,
        ...AuthRouters.routers
      ],
    );
  }
}