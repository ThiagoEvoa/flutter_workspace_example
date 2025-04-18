import 'package:package_core/package_core.dart';

import '../view_model/feature_one_detail_view_model.dart';

class FeatureOneDetailScreen extends ConsumerStatefulWidget {
  const FeatureOneDetailScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FeatureOneDetailScreenState();
}

class _FeatureOneDetailScreenState
    extends ConsumerState<FeatureOneDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final featureOneDetailViewModel = ref.watch(
      featureOneDetailViewModelProvider,
    );

    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(featureOneDetailViewModel.value.sid)),
    );
  }
}
