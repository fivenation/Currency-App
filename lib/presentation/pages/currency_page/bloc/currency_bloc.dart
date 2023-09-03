import 'package:currency_app/domain/models/currency/currency_data.dart';
import 'package:currency_app/domain/repository/currency_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'currency_bloc.freezed.dart';
part 'currency_event.dart';
part 'currency_state.dart';

@singleton
class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  final CurrencyRepository _repository;

  CurrencyBloc(this._repository) : super(const CurrencyState.loading()) {
    on<_CurrencyLoadEvent>(_onLoadEvent);
  }

  void _onLoadEvent(_CurrencyLoadEvent event,Emitter<CurrencyState> emit,) async {
    try {
      emit(const CurrencyState.loading());
      final res = await _repository.get(event.name, event.base);
      emit(CurrencyState.successful(data: res));
    } catch(error) {
      emit(CurrencyState.error(error: error.toString()));
      emit(state);
    }
  }

}