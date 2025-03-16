import 'package:package_core/package_core.dart';

void main() async {
  _setUpSplashScreen();
  CustomHttpOverrides.enableLocalhostOverrides();
  runApp(const ProviderScope(child: MyApp()));
}

Future<void> _setUpSplashScreen() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(
    Duration(seconds: 3),
    () => FlutterNativeSplash.remove(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: appThemeLight,
      darkTheme: appThemeDark,
      localizationsDelegates: const [
        LocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      routerConfig: router,
    );
  }
}
