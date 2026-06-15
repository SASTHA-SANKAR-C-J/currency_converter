import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:currency_converter/app/constants/status/status.dart';
import 'package:currency_converter/src/application/currency_bloc/currency_event.dart';
import 'package:currency_converter/src/application/currency_bloc/currency_state.dart';
import 'package:currency_converter/src/domain/repositories/currency_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  final CurrencyRepository _repository;

  CurrencyBloc(this._repository) : super(CurrencyState.initial()) {
    on<UpdateAmount>(_onUpdateAmount);
    on<UpdateFrom>(_onUpdateFrom);
    on<UpdateTo>(_onUpdateTo);
    on<SwapCurrencies>(_onSwapCurrencies);
    on<ConvertCurrency>(_onConvert);
    on<LoadRateHistory>(_onLoadRateHistory);
    on<LoadHistory>(_onLoadHistory);
    on<SaveConversion>(_onSaveConversion);
    on<UpdateRateSource>(_onUpdateRateSource);
  }

  void _onUpdateAmount(UpdateAmount event, Emitter<CurrencyState> emit) {
    emit(state.copyWith(amount: event.amount));
  }

  void _onUpdateFrom(UpdateFrom event, Emitter<CurrencyState> emit) {
    emit(state.copyWith(fromCurrency: event.currency, currentResult: null));
  }

  void _onUpdateTo(UpdateTo event, Emitter<CurrencyState> emit) {
    emit(state.copyWith(toCurrency: event.currency, currentResult: null));
  }

  void _onSwapCurrencies(SwapCurrencies event, Emitter<CurrencyState> emit) {
    emit(state.copyWith(
      fromCurrency: state.toCurrency,
      toCurrency: state.fromCurrency,
      currentResult: null,
    ));
  }

  void _onUpdateRateSource(
      UpdateRateSource event, Emitter<CurrencyState> emit) {
    _repository.currentSource = event.source;
    emit(state.copyWith(
      rateSource: event.source,
      currentResult: null,
    ));
  }

  Future<void> _onConvert(
      ConvertCurrency event, Emitter<CurrencyState> emit) async {
    if (state.amount <= 0) return;
    if (state.fromCurrency == state.toCurrency) return;

    emit(state.copyWith(
      convertStatus: const StatusLoading(),
    ));

    try {
      final result = await _repository.convert(
        state.amount,
        state.fromCurrency,
        state.toCurrency,
      );
      _repository.saveConversion(result);
      emit(state.copyWith(
        currentResult: result,
        convertStatus: StatusSuccess(data: result),
      ));
    } catch (e) {
      emit(state.copyWith(
        convertStatus: StatusFailure(e.toString()),
      ));
    }
  }

  Future<void> _onLoadRateHistory(
      LoadRateHistory event, Emitter<CurrencyState> emit) async {
    emit(state.copyWith(historyStatus: const StatusLoading()));
    try {
      final history = await _repository.getRateHistory(
        state.fromCurrency,
        state.toCurrency,
        days: event.days,
      );
      emit(state.copyWith(
        rateHistory: history,
        historyStatus: StatusSuccess(data: history),
      ));
    } catch (e) {
      emit(state.copyWith(
        historyStatus: StatusFailure(e.toString()),
      ));
    }
  }

  void _onLoadHistory(LoadHistory event, Emitter<CurrencyState> emit) {
    final history = _repository.getConversionHistory();
    emit(state.copyWith(conversionHistory: history));
  }

  Future<void> _onSaveConversion(
      SaveConversion event, Emitter<CurrencyState> emit) async {
    try {
      await _repository.saveConversion(event.result);
      emit(state.copyWith(saveStatus: const StatusSuccess()));
    } catch (e) {
      emit(state.copyWith(saveStatus: StatusFailure(e.toString())));
    }
  }
}
