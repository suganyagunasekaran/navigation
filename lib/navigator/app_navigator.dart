import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/router/app_router.dart';

abstract class AppNavigator {
  void pushHome();
  void pushAccounts();
  void pushProfile();
}

class AppNavigatorImpl implements AppNavigator {
  AppNavigatorImpl(this.context);

  final BuildContext context;

  @override
  void pushHome() {
    context.pushNamed(AppRoutes.home.name);
  }

  @override
  void pushAccounts() {
    context.pushNamed(AppRoutes.accounts.name);
  }

  @override
  void pushProfile() {
    context.pushNamed(AppRoutes.profile.name);
  }
}