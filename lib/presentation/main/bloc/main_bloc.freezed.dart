// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  int get curPage => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int curPage, String name) getKino,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int curPage, String name)? getKino,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int curPage, String name)? getKino,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainGetKino value) getKino,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainGetKino value)? getKino,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainGetKino value)? getKino,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainEventCopyWith<MainEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
  @useResult
  $Res call({int curPage, String name});
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curPage = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      curPage: null == curPage
          ? _value.curPage
          : curPage // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainGetKinoCopyWith<$Res>
    implements $MainEventCopyWith<$Res> {
  factory _$$MainGetKinoCopyWith(
          _$MainGetKino value, $Res Function(_$MainGetKino) then) =
      __$$MainGetKinoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int curPage, String name});
}

/// @nodoc
class __$$MainGetKinoCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainGetKino>
    implements _$$MainGetKinoCopyWith<$Res> {
  __$$MainGetKinoCopyWithImpl(
      _$MainGetKino _value, $Res Function(_$MainGetKino) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? curPage = null,
    Object? name = null,
  }) {
    return _then(_$MainGetKino(
      curPage: null == curPage
          ? _value.curPage
          : curPage // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainGetKino implements MainGetKino {
  const _$MainGetKino({required this.curPage, required this.name});

  @override
  final int curPage;
  @override
  final String name;

  @override
  String toString() {
    return 'MainEvent.getKino(curPage: $curPage, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainGetKino &&
            (identical(other.curPage, curPage) || other.curPage == curPage) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, curPage, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainGetKinoCopyWith<_$MainGetKino> get copyWith =>
      __$$MainGetKinoCopyWithImpl<_$MainGetKino>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int curPage, String name) getKino,
  }) {
    return getKino(curPage, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int curPage, String name)? getKino,
  }) {
    return getKino?.call(curPage, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int curPage, String name)? getKino,
    required TResult orElse(),
  }) {
    if (getKino != null) {
      return getKino(curPage, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainGetKino value) getKino,
  }) {
    return getKino(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainGetKino value)? getKino,
  }) {
    return getKino?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainGetKino value)? getKino,
    required TResult orElse(),
  }) {
    if (getKino != null) {
      return getKino(this);
    }
    return orElse();
  }
}

abstract class MainGetKino implements MainEvent {
  const factory MainGetKino(
      {required final int curPage, required final String name}) = _$MainGetKino;

  @override
  int get curPage;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$MainGetKinoCopyWith<_$MainGetKino> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<KinoModel> kinoList) loaded,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<KinoModel> kinoList)? loaded,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<KinoModel> kinoList)? loaded,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MainLoaded value) loaded,
    required TResult Function(MainLoading value) loading,
    required TResult Function(MainError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MainLoaded value)? loaded,
    TResult? Function(MainLoading value)? loading,
    TResult? Function(MainError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MainLoaded value)? loaded,
    TResult Function(MainLoading value)? loading,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MainState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<KinoModel> kinoList) loaded,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<KinoModel> kinoList)? loaded,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<KinoModel> kinoList)? loaded,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MainLoaded value) loaded,
    required TResult Function(MainLoading value) loading,
    required TResult Function(MainError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MainLoaded value)? loaded,
    TResult? Function(MainLoading value)? loading,
    TResult? Function(MainError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MainLoaded value)? loaded,
    TResult Function(MainLoading value)? loading,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$MainLoadedCopyWith<$Res> {
  factory _$$MainLoadedCopyWith(
          _$MainLoaded value, $Res Function(_$MainLoaded) then) =
      __$$MainLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<KinoModel> kinoList});
}

/// @nodoc
class __$$MainLoadedCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainLoaded>
    implements _$$MainLoadedCopyWith<$Res> {
  __$$MainLoadedCopyWithImpl(
      _$MainLoaded _value, $Res Function(_$MainLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kinoList = null,
  }) {
    return _then(_$MainLoaded(
      kinoList: null == kinoList
          ? _value._kinoList
          : kinoList // ignore: cast_nullable_to_non_nullable
              as List<KinoModel>,
    ));
  }
}

/// @nodoc

class _$MainLoaded implements MainLoaded {
  const _$MainLoaded({required final List<KinoModel> kinoList})
      : _kinoList = kinoList;

  final List<KinoModel> _kinoList;
  @override
  List<KinoModel> get kinoList {
    if (_kinoList is EqualUnmodifiableListView) return _kinoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kinoList);
  }

  @override
  String toString() {
    return 'MainState.loaded(kinoList: $kinoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainLoaded &&
            const DeepCollectionEquality().equals(other._kinoList, _kinoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_kinoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainLoadedCopyWith<_$MainLoaded> get copyWith =>
      __$$MainLoadedCopyWithImpl<_$MainLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<KinoModel> kinoList) loaded,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(kinoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<KinoModel> kinoList)? loaded,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(kinoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<KinoModel> kinoList)? loaded,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(kinoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MainLoaded value) loaded,
    required TResult Function(MainLoading value) loading,
    required TResult Function(MainError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MainLoaded value)? loaded,
    TResult? Function(MainLoading value)? loading,
    TResult? Function(MainError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MainLoaded value)? loaded,
    TResult Function(MainLoading value)? loading,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MainLoaded implements MainState {
  const factory MainLoaded({required final List<KinoModel> kinoList}) =
      _$MainLoaded;

  List<KinoModel> get kinoList;
  @JsonKey(ignore: true)
  _$$MainLoadedCopyWith<_$MainLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainLoadingCopyWith<$Res> {
  factory _$$MainLoadingCopyWith(
          _$MainLoading value, $Res Function(_$MainLoading) then) =
      __$$MainLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainLoadingCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainLoading>
    implements _$$MainLoadingCopyWith<$Res> {
  __$$MainLoadingCopyWithImpl(
      _$MainLoading _value, $Res Function(_$MainLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainLoading implements MainLoading {
  const _$MainLoading();

  @override
  String toString() {
    return 'MainState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<KinoModel> kinoList) loaded,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<KinoModel> kinoList)? loaded,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<KinoModel> kinoList)? loaded,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MainLoaded value) loaded,
    required TResult Function(MainLoading value) loading,
    required TResult Function(MainError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MainLoaded value)? loaded,
    TResult? Function(MainLoading value)? loading,
    TResult? Function(MainError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MainLoaded value)? loaded,
    TResult Function(MainLoading value)? loading,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MainLoading implements MainState {
  const factory MainLoading() = _$MainLoading;
}

/// @nodoc
abstract class _$$MainErrorCopyWith<$Res> {
  factory _$$MainErrorCopyWith(
          _$MainError value, $Res Function(_$MainError) then) =
      __$$MainErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$MainErrorCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainError>
    implements _$$MainErrorCopyWith<$Res> {
  __$$MainErrorCopyWithImpl(
      _$MainError _value, $Res Function(_$MainError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$MainError(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainError implements MainError {
  const _$MainError({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'MainState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainErrorCopyWith<_$MainError> get copyWith =>
      __$$MainErrorCopyWithImpl<_$MainError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<KinoModel> kinoList) loaded,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<KinoModel> kinoList)? loaded,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<KinoModel> kinoList)? loaded,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MainLoaded value) loaded,
    required TResult Function(MainLoading value) loading,
    required TResult Function(MainError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MainLoaded value)? loaded,
    TResult? Function(MainLoading value)? loading,
    TResult? Function(MainError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MainLoaded value)? loaded,
    TResult Function(MainLoading value)? loading,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MainError implements MainState {
  const factory MainError({required final String errorMessage}) = _$MainError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$MainErrorCopyWith<_$MainError> get copyWith =>
      throw _privateConstructorUsedError;
}
