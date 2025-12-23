import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:stock_investment_app/app/tz_app.dart';
import 'package:stock_investment_app/core/di/injection.dart';
import 'package:stock_investment_app/core/loggers/log.dart';

Future<void> runTzApp(String env) async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await registerAppVersion();

    await configureDependencies(env);
    log("injection init");

    runApp(TzApp());
  }, (error, stackTrace) => _handleError(error, stackTrace));
}

Future<void> _handleError(Object error, StackTrace stackTrace) async {
  await registerAppVersion();
  Log.e(error, message: "Error in runZonedGuarded", stackTrace: stackTrace);
}

Future<void> registerAppVersion() async {
  final appVersionData = await PackageInfo.fromPlatform();
  final appVersion = 'v${appVersionData.version}'
      '+${appVersionData.buildNumber}';
  Log.appVersion = appVersion;
}
