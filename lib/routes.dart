import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:ui/email_verified.dart';
import 'package:ui/log_in.dart';
import 'package:ui/sign_up.dart';
import 'package:ui/splash.dart';
import 'package:ui/verify_email.dart';

abstract class Routes {
  static const signup = '/signup';
  static const login = '/login';
  static const splashScreen='/splashScreen';
}
final appPages = [
  GetPage(
    name: Routes.splashScreen,
    page: () => const Splash(),
  ),
  GetPage(
    name: Routes.login,
    page: () => const LogIn(),
  ),

  GetPage(
    name: Routes.signup,
    page: () => const SignUp(),
  ),

];