import 'package:get_it/get_it.dart';

import '../../viewmodel/pages/login_viewmodel.dart';

abstract class DependencyInjection {
  static void initialize() {
    GetIt.instance.registerSingleton<LoginViewModel>(LoginViewModel());
  }
}
