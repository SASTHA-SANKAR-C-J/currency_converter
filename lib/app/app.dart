import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:currency_converter/app/app_router/app_router.dart';
import 'package:currency_converter/app/providers/providers.dart';
import 'package:currency_converter/app/theme/theme.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appRouter = AppRouter.instance;

  @override
  Widget build(BuildContext context) {
    return TheResponsiveBuilder(
      builder: (context, orientation, screenType) {
        return MultiBlocProvider(
          providers: kBlocProviders,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: appRouter.config(),
            theme: AppThemes.lightTheme,
          ),
        );
      },
    );
  }
}
