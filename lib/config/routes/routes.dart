import 'package:ecomerce_ieee/features/example_on_clean_dontwritethingonit/presentation/pages/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const String home = "/";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) => const HomeScreen(),
      )
    ],
  );
}
