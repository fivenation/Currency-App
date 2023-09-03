import 'package:currency_app/domain/models/summary/summary_data.dart';
import 'package:currency_app/domain/repository/summary_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'summary_bloc.freezed.dart';
part 'summary_event.dart';
part 'summary_state.dart';

@singleton
class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  final SummaryRepository _repository;

  SummaryBloc(this._repository) : super(const SummaryState.loading()) {
    on<_SummaryLoadEvent>(_onLoadEvent);
    on<_SummaryChangeFavoriteEvent>(_onChangeFavoriteEvent);
  }

  void _onLoadEvent(_SummaryLoadEvent event,Emitter<SummaryState> emit,) async {
    try {
      final res = await _repository.getAll(event.base);
      emit(SummaryState.successful(data: res));
    } catch(error) {
      emit(SummaryState.error(error: error.toString()));
      emit(state);
    }
  }

  void _onChangeFavoriteEvent(_SummaryChangeFavoriteEvent event,Emitter<SummaryState> emit,) async {
    try {
      final list = (state as _SummarySuccessfulState).data;
      final upd = await _repository.changeFavorite(event.data);
      final updList = List<SummaryData>.of(list);
      updList[updList.indexWhere((element) => element.name == upd.name)] = upd;
      emit(SummaryState.successful(data: updList));
    } catch(error) {
      final save = state;
      emit(SummaryState.error(error: error.toString()));
      emit(save);
    }
  }

}