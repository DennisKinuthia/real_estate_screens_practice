import 'package:go_router/go_router.dart';
import 'package:real_estate/screens/description_screen.dart';
import 'package:real_estate/screens/landing.dart';

enum AppRoutes { home, details }

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home.name,
      builder: (context, state) => const LandingPage(),
    ),
    GoRoute(
      path: '/details/:id',
      name: AppRoutes.details.name,
      builder: (context, state) {
        final itemData = state.extra;
        return Description(itemData: itemData);
      },
    ),
  ],
);
