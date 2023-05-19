part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial() = _Initial;
  const factory MainState.loaded({
    required List<KinoModel> kinoList,
  }) = MainLoaded;
  const factory MainState.loading() = MainLoading;
  const factory MainState.error({required String errorMessage}) = MainError;
}
