import 'package:package_core/package_core.dart';

import '../../data/model/feature_one_model.dart';
import '../view_model/feature_one_view_model.dart';

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

  void _openDetailScreen(FeatureOneModel featureOneItem) {
    context.go('/detail', extra: featureOneItem);
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
        data:
            (featureOne) => ListView.builder(
              itemCount: featureOne.list.length,
              itemBuilder: (context, index) {
                final featureOneItem = featureOne.list[index];
                return Card(
                  child: ListTile(
                    onTap: () => _openDetailScreen(featureOneItem),
                    title: Text(featureOneItem.sid),
                  ),
                );
              },
              padding: EdgeInsets.all(5),
            ),
        error:
            (exception, stackTrace) => Center(child: Text('Error: $exception')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
