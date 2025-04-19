import 'package:package_core/package_core.dart';

import '../../ui/ui.dart';

const featureOneEntryPoint = '/';
const featureOneDetail = 'detail';

final featureOneRouter = GoRoute(
  path: featureOneEntryPoint,
  builder: (context, state) => FeatureOneEntryPointScreen(),
  routes: [
    GoRoute(
      path: featureOneDetail,
      builder: (context, state) => FeatureOneDetailScreen(),
    ),
  ],
);
