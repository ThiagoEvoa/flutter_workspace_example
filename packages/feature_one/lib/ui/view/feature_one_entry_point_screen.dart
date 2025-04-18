import 'package:feature_one/feature_one.dart';
import 'package:package_core/package_core.dart';

class FeatureOneEntryPointScreen extends StatefulWidget {
  const FeatureOneEntryPointScreen({super.key});

  @override
  State<FeatureOneEntryPointScreen> createState() =>
      _FeatureOneEntryPointScreenState();
}

class _FeatureOneEntryPointScreenState
    extends State<FeatureOneEntryPointScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return screenSize.width > 600
        ? Row(
          children: <Widget>[
            Expanded(flex: 1, child: FeatureOneScreen(isMultiScreen: true)),
            Expanded(flex: 2, child: FeatureOneDetailScreen()),
          ],
        )
        : const FeatureOneScreen();
  }
}
