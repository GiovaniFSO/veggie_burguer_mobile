import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veggie_burguer_mobile/app/core/ui/veggie_ui.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_app_bar.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_button.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_textformfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VeggieAppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: context.textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.theme.primaryColorDark),
                  ),
                  Text(
                    'Preencha os campos abaixo para criar o seu cadastro.',
                    style: context.textTheme.bodyText1,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const VeggieTextformfield(label: 'Nome'),
                  const SizedBox(
                    height: 30,
                  ),
                  const VeggieTextformfield(label: 'E-mail'),
                  const SizedBox(
                    height: 30,
                  ),
                  const VeggieTextformfield(label: 'Senha'),
                  const SizedBox(
                    height: 30,
                  ),
                  const VeggieTextformfield(label: 'Confirmar senha'),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: VeggieButton(
                        width: context.width,
                        label: 'CADASTRAR',
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
