import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:kinopoisk/data/apis/kino_api.dart';

import 'package:kinopoisk/data/models/kino_model.dart';
import 'package:kinopoisk/utis/error_handling.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const _Initial()) {
    on<MainGetKino>((event, emit) async {
      List<KinoModel> kinoList = [];
      var kinoApi = KinoApi();

      emit(const MainState.loading());
      try {
        kinoList = await kinoApi.getKino(name: event.name, curPage: event.curPage);

        emit(MainState.loaded(
          kinoList: kinoList,
        ));
      } catch (e) {
        emit(MainState.error(errorMessage: complainError(e)));
      }
    });
  }
}
