import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_app_bar.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_button.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_textformfield.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF140E0E),
        child: Stack(children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
                width: context.width,
                child: Image.asset(
                  'assets/images/lanche.png',
                  fit: BoxFit.cover,
                )),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: context.heightTransformer(reducedBy: 75),
                ),
                Image.asset('assets/images/logo.png'),
                const SizedBox(
                  height: 60,
                ),
                VeggieButton(
                  label: 'Acessar',
                  width: context.widthTransformer(reducedBy: 40),
                  height: 45,
                  onPressed: () {
                    Get.toNamed('/auth/login');
                  },
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}