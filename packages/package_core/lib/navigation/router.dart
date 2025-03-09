import 'package:feature_one/feature_one.dart';
import 'package:my_app/my_app.dart';

import '../package_core.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyAppScreen(),
      routes: [
        GoRoute(
          path: '/feature-one',
          builder: (context, state) => FeatureOneScreen(),
        ),
      ],
    ),
  ],
);
