part of 'navigation_bloc.dart';

abstract class NavigationEvent {}

class NavigateToHome extends NavigationEvent {}

class NavigateToAccounts extends NavigationEvent {}