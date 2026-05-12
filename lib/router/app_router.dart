import 'package:go_router/go_router.dart';
import 'package:navigation/screens/home_screen.dart';
import 'package:navigation/screens/accounts_screen.dart';
import 'package:navigation/screens/profile_screen.dart';

enum AppRoutes {
  home,
  accounts,
  profile,
}

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: AppRoutes.home.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: AppRoutes.accounts.name,
      path: '/accounts',
      builder: (context, state) => const AccountsScreen(),
    ),
    GoRoute(
      name: AppRoutes.profile.name,
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);