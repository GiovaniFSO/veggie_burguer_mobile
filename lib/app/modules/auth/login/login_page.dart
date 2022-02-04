import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';
import 'package:veggie_burguer_mobile/app/core/ui/veggie_ui.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_app_bar.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_button.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_state.dart';
import 'package:veggie_burguer_mobile/app/core/ui/widgets/veggie_textformfield.dart';
import 'package:veggie_burguer_mobile/app/modules/auth/login/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends VeggieState<LoginPage, LoginController> {
  final _formKey = GlobalKey<FormState>();
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();

  @override
  void dispose() {
    _emailEC.dispose();
    _passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VeggieAppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (_, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Form(
                key: _formKey,
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
                      const SizedBox(
                        height: 30,
                      ),
                      VeggieTextformfield(
                        label: 'E-mail',
                        controller: _emailEC,
                        validator: Validatorless.multiple([
                          Validatorless.required('E-mail obrigatório'),
                          Validatorless.email('E-mail inválido')
                        ]),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      VeggieTextformfield(
                          label: 'Senha',
                          obscureText: true,
                          controller: _passwordEC,
                          validator: Validatorless.multiple([
                            Validatorless.required('Senha obrigatório'),
                            Validatorless.min(
                                6, 'Senha deve conter pelo menos 6 caracteres')
                          ])),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: VeggieButton(
                              width: context.width,
                              label: 'ENTRAR',
                              onPressed: () {
                                final formValid =
                                    _formKey.currentState?.validate() ?? false;
                                if (formValid) {
                                  controller.login(email: _emailEC.text, password: _passwordEC.text);
                                }
                              })),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Não possui uma conta?'),
                          TextButton(
                            onPressed: () {
                              Get.toNamed('/auth/register');
                            },
                            child: const Text(
                              'Cadastre-se',
                              style: VeggieUi.textBold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
