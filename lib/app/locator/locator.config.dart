// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:currency_converter/app/services/local_storage_service.dart'
    as _i731;
import 'package:currency_converter/src/application/currency_bloc/currency_bloc.dart'
    as _i484;
import 'package:currency_converter/src/domain/repositories/currency_repository.dart'
    as _i569;
import 'package:currency_converter/src/infrastructure/i_currency_repository.dart'
    as _i530;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i731.LocalStorageService>(
      () => _i731.LocalStorageService(),
    );
    gh.lazySingleton<_i569.CurrencyRepository>(
      () => _i530.CurrencyRepositoryImplementation(
        gh<_i731.LocalStorageService>(),
      ),
    );
    gh.factory<_i484.CurrencyBloc>(
      () => _i484.CurrencyBloc(gh<_i569.CurrencyRepository>()),
    );
    return this;
  }
}
