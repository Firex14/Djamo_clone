import 'package:flutter/material.dart';



class AppRoutes {
  AppRoutes._();

  static const String homeScreen = '/';

  // static const String loginScreen = 'loginScreen';
  // static const String registerScreen = 'registerScreen';
  // static const String passwordScreen = 'passwordScreen';
  // static const String updatePasswordScreen = 'updatePasswordScreen';
  // static const String phoneNumberScreen = 'phoneNumberScreen';
  // static const String otpEmailScreen = 'otpEmailScreen';
  // static const String otpPhoneNumberScreen = 'otpPhoneNumberScreen';
  // static const String accountScreen = 'accountScreen

  // static final routes = <String, WidgetBuilder>{
  //   registerScreen: (BuildContext context) => RegisterScreen(),
  //   passwordScreen: (BuildContext context) => PasswordScreen(),
  //   phoneNumberScreen: (BuildContext context) => PhoneNumberScreen(),
  //   otpEmailScreen: (BuildContext context) => OtpEmailScreen(),
  //   otpPhoneNumberScreen: (BuildContext context) => OtpPhoneNumberScreen(),
  // };

  static void navigateTo(BuildContext context, {required Widget widget}) {
    Navigator.push(context, MaterialPageRoute(builder: (builder) => widget));
  }

  static void ofAndNavigateTo(BuildContext context, {required Widget widget}) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder) => widget), (Route<dynamic> route) => false);
  }

  static void offAndNavigateTo(BuildContext context, {required Widget widget}) {
    Navigator.of(context, rootNavigator: true).push(
        MaterialPageRoute(builder: (context) => widget));
  }
  static void goTo(BuildContext context, {required String routeName}) {
    Navigator.pushNamed(context, routeName);
  }

  static void offAllAndGoTo(BuildContext context, {required String routeName}) {
    Navigator.pushNamedAndRemoveUntil(context, routeName, (Route<dynamic> route) => false);
  }

  static void goBack(
    BuildContext context,
  ) {
    Navigator.of(context).pop();
  }
}
