import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:currency_converter/app/locator/locator.dart';
import 'package:currency_converter/src/application/currency_bloc/currency_bloc.dart';

List<BlocProvider> kBlocProviders = [
  BlocProvider<CurrencyBloc>(create: (context) => getIt<CurrencyBloc>()),
];
