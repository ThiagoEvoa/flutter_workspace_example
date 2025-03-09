import 'package:package_core/package_core.dart';

class FeatureOneScreen extends StatefulWidget {
  const FeatureOneScreen({super.key});

  @override
  State<FeatureOneScreen> createState() => _FeatureOneScreenState();
}

class _FeatureOneScreenState extends State<FeatureOneScreen> {
  @override
  Widget build(BuildContext context) {
    final title = Localization.of(context).title;
    return Scaffold(appBar: AppBar(title: Text(title)));
  }
}
