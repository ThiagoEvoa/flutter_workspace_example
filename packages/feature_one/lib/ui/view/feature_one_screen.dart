import 'package:feature_one/ui/view_model/feature_one_view_model.dart';
import 'package:package_core/package_core.dart';

class FeatureOneScreen extends ConsumerStatefulWidget {
  const FeatureOneScreen({super.key});

  @override
  ConsumerState<FeatureOneScreen> createState() => _FeatureOneScreenState();
}

class _FeatureOneScreenState extends ConsumerState<FeatureOneScreen> {
  void _retrieveHelloWorld() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(featureOneViewModelProvider.notifier).retrieveHelloWorld();
    });
  }

  @override
  void initState() {
    super.initState();
    _retrieveHelloWorld();
  }

  @override
  Widget build(BuildContext context) {
    final featureOneViewModel = ref.watch(featureOneViewModelProvider);
    final title = Localization.of(context).title;
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: featureOneViewModel.when(
        data: (featureOne) => Center(child: Text(featureOne.sid)),
        error:
            (exception, stackTrace) => Center(child: Text('Error: $exception')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
