import '../../package_core.dart';
import 'widgets_theme_data/widget_theme_data.dart';

const _mapColor = <int, Color>{
  50: Color(0xFFF5F5F5),
  100: Color(0xFFF5F5F5),
  200: Color(0xFFEEEEEE),
  300: Color(0xFFE0E0E0),
  400: Color(0xFFBDBDBD),
  500: Color(0xFF9E9E9E),
  600: Color(0xFF757575),
  700: Color(0xFF616161),
  800: Color(0xFF424242),
  900: Color(0xFF212121),
  1000: Color(0xFF000000),
};

final appThemeDark = ThemeData(
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: MaterialColor(_mapColor[900]!.colorSpace.index, _mapColor),
  brightness: Brightness.dark,
  cupertinoOverrideTheme: const CupertinoThemeData(brightness: Brightness.dark),
  listTileTheme: listTileThemeData,
  cardTheme: cardThemeData,
  appBarTheme: appBarThemeData,
);
