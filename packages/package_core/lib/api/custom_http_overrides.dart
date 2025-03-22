import '../../package_core.dart';

class CustomHttpOverrides extends HttpOverrides {
  static void enableLocalhostOverrides() {
    final environment = const String.fromEnvironment('ENV');
    if (environment == 'dev') {
      HttpOverrides.global = CustomHttpOverrides();
    }
  }

  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = ((
        X509Certificate cert,
        String host,
        int port,
      ) {
        final isValidHost = [
          "localhost",
          "192.168.1.131",
        ].contains(host); // <-- allow only hosts in array
        return isValidHost;
      });
  }
}
