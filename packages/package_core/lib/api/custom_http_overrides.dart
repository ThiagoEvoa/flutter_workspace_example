import '../../package_core.dart';

/// The purpose of this CustomHttpOverrides class is to bypass SSL certificate validation for specific predefined hosts only when the application run with the kDebugMode.
///
/// This is a common technique used during development to allow the app to connect to local backend servers or servers on a local network that might be using self-signed certificates for HTTPS, which would normally be rejected by the HTTP client.
class CustomHttpOverrides extends HttpOverrides {
  static void enableLocalhostOverrides() {
    if (kDebugMode) {
      HttpOverrides.global = CustomHttpOverrides();
      debugPrint(
        '*****************************************************************',
      );
      debugPrint(
        '* WARNING: CustomHttpOverrides enabled for debug.               *',
      );
      debugPrint(
        '* Certificate validation bypassed for specific hosts.           *',
      );
      debugPrint(
        '* DO NOT SHIP YOUR APP WITH THIS ENABLED IN RELEASE BUILDS.     *',
      );
      debugPrint(
        '*****************************************************************',
      );
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
