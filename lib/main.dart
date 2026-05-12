import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation/bloc/navigation_bloc.dart';
import 'package:navigation/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationBloc(),
      child: MaterialApp.router(
        title: 'Navigation Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        routerConfig: appRouter,
        builder: (context, child) {
          return BlocListener<NavigationBloc, NavigationState>(
            listener: (context, state) {
              if (state is HomeRouteState) {
                appRouter.go('/');
              } else if (state is AccountsRouteState) {
                appRouter.go('/accounts');
              }
            },
            child: child ?? const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}