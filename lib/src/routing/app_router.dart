import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reminders/src/features/home/home_screen.dart';

enum AppRoute {
  home,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/', debugLogDiagnostics: false, routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
    )
  ]);
});
