import 'package:flutter/material.dart';
import 'package:navigation/navigator/app_navigator.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final navigator = AppNavigatorImpl(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Accounts'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.account_circle, size: 80, color: Colors.blue),
            const SizedBox(height: 16),
            const Text(
              'Accounts Screen',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () => context.navigator.pushHome(),
              icon: const Icon(Icons.home),
              label: const Text('Go to Home'),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () => context.navigator.pushProfile(),
              icon: const Icon(Icons.person),
              label: const Text('Go to Profile'),
            ),
          ],
        ),
      ),
    );
  }
}