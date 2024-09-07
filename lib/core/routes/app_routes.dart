import 'package:t/feature/auth/view/register_view.dart';

import '../../feature/auth/view/login_view.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String forgetPassword = '/forgetPassword';
  static const String home = '/home';
}

var routes = {
  AppRoutes.login: (context) => const LoginView(),
  AppRoutes.register: (context) => const RegisterView(),

};
