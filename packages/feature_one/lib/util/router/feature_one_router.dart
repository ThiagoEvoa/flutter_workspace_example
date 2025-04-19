import 'package:package_core/package_core.dart';

import '../../ui/ui.dart';

final featureOneRouter = GoRoute(
  path: '/',
  builder: (context, state) => FeatureOneEntryPointScreen(),
  routes: [
    GoRoute(
      path: 'detail',
      builder: (context, state) => FeatureOneDetailScreen(),
    ),
  ],
);
