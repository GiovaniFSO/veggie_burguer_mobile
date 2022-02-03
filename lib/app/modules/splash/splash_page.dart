import 'package:flutter/material.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_app_bar.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_button.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_textformfield.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VeggieAppBar(),
      body: Column(
        children: [
          const SizedBox(
             height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: VeggieTextformfield(
              label: 'Text Form',
              obscureText: true,
            ),
          ),
          const SizedBox(
             height: 20,
          ),
          VeggieButton(label: 'Entrar', onPressed: (){})
        ],
      ),
    );
  }
}
