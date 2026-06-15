import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:currency_converter/app/app.dart';
import 'package:currency_converter/app/locator/locator.dart';
import 'package:currency_converter/app/services/local_storage_service.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  configureDependencies();
  await getIt<LocalStorageService>().init();
  runApp(MyApp());
}
