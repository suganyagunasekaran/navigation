import 'package:go_router/go_router.dart';
import 'package:navigation/screens/home_screen.dart';
import 'package:navigation/screens/accounts_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/accounts',
      builder: (context, state) => const AccountsScreen(),
    ),
  ],
);