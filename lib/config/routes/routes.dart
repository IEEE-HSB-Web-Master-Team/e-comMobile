import 'package:ecomerce_ieee/features/home_feature/presentation/views/home_page.dart';
import 'package:ecomerce_ieee/features/login/presentation/widgets/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home_feature/presentation/widgets/brand_view.dart';



class AppRoute {
  // static const String home = "/";
  // static const String login = "/";
  static const String brandView = "/";
  static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: login,
      //   builder: (context, state) => const LoginPage(), // هنا يتم تعريف صفحة تسجيل الدخول
      // ),
      GoRoute(
        path: brandView,
        builder: (context, state) =>
            const HomePage(),
      ),
    ],
  );
}
