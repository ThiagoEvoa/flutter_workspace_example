import 'package:feature_one/feature_one.dart';

import '../package_core.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => FeatureOneEntryPointScreen(),
      routes: [
        GoRoute(
          path: 'detail',
          builder: (context, state) => FeatureOneDetailScreen(),
        ),
      ],
    ),
  ],
);
