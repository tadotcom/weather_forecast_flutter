import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/weather/presentation/home_screen.dart';
import '../../features/weather/presentation/weather_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/weather',
        builder: (context, state) {
          final city = state.uri.queryParameters['city'] ?? 'Tokyo';
          return WeatherScreen(city: city);
        },
      ),
    ],
  );
}