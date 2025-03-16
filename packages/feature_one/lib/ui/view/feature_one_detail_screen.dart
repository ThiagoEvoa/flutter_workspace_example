import 'package:package_core/package_core.dart';

import '../../data/model/feature_one_model.dart';

class FeatureOneDetailScreen extends ConsumerStatefulWidget {
  const FeatureOneDetailScreen({super.key, required this.featureOneItem});

  final FeatureOneModel featureOneItem;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FeatureOneDetailScreenState();
}

class _FeatureOneDetailScreenState
    extends ConsumerState<FeatureOneDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final featureOneItem = widget.featureOneItem;

    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(featureOneItem.sid)),
    );
  }
}
