import 'package:get/get.dart';
import 'package:veggie_burguer_mobile/app/core/mixins/loader_mixin.dart';
import 'package:veggie_burguer_mobile/app/core/mixins/messages_mixin.dart';
import 'package:veggie_burguer_mobile/app/repositories/auth/auth_repository.dart';

class RegisterController extends GetxController
    with LoaderMixin, MessagesMixin {
  final AuthRepository _authRepository;

  final loading = false.obs;
  final message = Rxn<MessageModel>();

  RegisterController({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  void onInit() {
    loaderListener(loading);
    messageListener(message);
    super.onInit();
  }
}
