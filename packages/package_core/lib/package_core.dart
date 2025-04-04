library;

export 'dart:io'
    show HttpOverrides, HttpClient, SecurityContext, X509Certificate;

export 'package:dio/dio.dart';
export 'package:flutter/cupertino.dart' hide RefreshCallback;
export 'package:flutter/foundation.dart' show SynchronousFuture;
export 'package:flutter/material.dart';
export 'package:flutter_localizations/flutter_localizations.dart';
export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:go_router/go_router.dart';
export 'package:pretty_dio_logger/pretty_dio_logger.dart';
export 'package:retrofit/retrofit.dart' hide Path, Headers;
// ignore: invalid_export_of_internal_element
export 'package:riverpod_annotation/riverpod_annotation.dart';

export './theme/theme.dart';
export 'api/api.dart';
export 'localization/localization.dart';
export 'localization/localization_delegate.dart';
export 'navigation/router.dart';
