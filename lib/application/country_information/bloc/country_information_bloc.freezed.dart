// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'country_information_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CountryInformationEventTearOff {
  const _$CountryInformationEventTearOff();

// ignore: unused_element
  _Started searchThisCountry({@required String countryName}) {
    return _Started(
      countryName: countryName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CountryInformationEvent = _$CountryInformationEventTearOff();

/// @nodoc
mixin _$CountryInformationEvent {
  String get countryName;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchThisCountry(String countryName),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchThisCountry(String countryName),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchThisCountry(_Started value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchThisCountry(_Started value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $CountryInformationEventCopyWith<CountryInformationEvent> get copyWith;
}

/// @nodoc
abstract class $CountryInformationEventCopyWith<$Res> {
  factory $CountryInformationEventCopyWith(CountryInformationEvent value,
          $Res Function(CountryInformationEvent) then) =
      _$CountryInformationEventCopyWithImpl<$Res>;
  $Res call({String countryName});
}

/// @nodoc
class _$CountryInformationEventCopyWithImpl<$Res>
    implements $CountryInformationEventCopyWith<$Res> {
  _$CountryInformationEventCopyWithImpl(this._value, this._then);

  final CountryInformationEvent _value;
  // ignore: unused_field
  final $Res Function(CountryInformationEvent) _then;

  @override
  $Res call({
    Object countryName = freezed,
  }) {
    return _then(_value.copyWith(
      countryName:
          countryName == freezed ? _value.countryName : countryName as String,
    ));
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res>
    implements $CountryInformationEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({String countryName});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$CountryInformationEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object countryName = freezed,
  }) {
    return _then(_Started(
      countryName:
          countryName == freezed ? _value.countryName : countryName as String,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started({@required this.countryName}) : assert(countryName != null);

  @override
  final String countryName;

  @override
  String toString() {
    return 'CountryInformationEvent.searchThisCountry(countryName: $countryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(countryName);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchThisCountry(String countryName),
  }) {
    assert(searchThisCountry != null);
    return searchThisCountry(countryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchThisCountry(String countryName),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchThisCountry != null) {
      return searchThisCountry(countryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchThisCountry(_Started value),
  }) {
    assert(searchThisCountry != null);
    return searchThisCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchThisCountry(_Started value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchThisCountry != null) {
      return searchThisCountry(this);
    }
    return orElse();
  }
}

abstract class _Started implements CountryInformationEvent {
  const factory _Started({@required String countryName}) = _$_Started;

  @override
  String get countryName;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith;
}

/// @nodoc
class _$CountryInformationStateTearOff {
  const _$CountryInformationStateTearOff();

// ignore: unused_element
  _CountryInformationState call(
      {bool isLoading, List<CountryInformationModel> countriesList}) {
    return _CountryInformationState(
      isLoading: isLoading,
      countriesList: countriesList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CountryInformationState = _$CountryInformationStateTearOff();

/// @nodoc
mixin _$CountryInformationState {
  bool get isLoading;
  List<CountryInformationModel> get countriesList;

  @JsonKey(ignore: true)
  $CountryInformationStateCopyWith<CountryInformationState> get copyWith;
}

/// @nodoc
abstract class $CountryInformationStateCopyWith<$Res> {
  factory $CountryInformationStateCopyWith(CountryInformationState value,
          $Res Function(CountryInformationState) then) =
      _$CountryInformationStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<CountryInformationModel> countriesList});
}

/// @nodoc
class _$CountryInformationStateCopyWithImpl<$Res>
    implements $CountryInformationStateCopyWith<$Res> {
  _$CountryInformationStateCopyWithImpl(this._value, this._then);

  final CountryInformationState _value;
  // ignore: unused_field
  final $Res Function(CountryInformationState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object countriesList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      countriesList: countriesList == freezed
          ? _value.countriesList
          : countriesList as List<CountryInformationModel>,
    ));
  }
}

/// @nodoc
abstract class _$CountryInformationStateCopyWith<$Res>
    implements $CountryInformationStateCopyWith<$Res> {
  factory _$CountryInformationStateCopyWith(_CountryInformationState value,
          $Res Function(_CountryInformationState) then) =
      __$CountryInformationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<CountryInformationModel> countriesList});
}

/// @nodoc
class __$CountryInformationStateCopyWithImpl<$Res>
    extends _$CountryInformationStateCopyWithImpl<$Res>
    implements _$CountryInformationStateCopyWith<$Res> {
  __$CountryInformationStateCopyWithImpl(_CountryInformationState _value,
      $Res Function(_CountryInformationState) _then)
      : super(_value, (v) => _then(v as _CountryInformationState));

  @override
  _CountryInformationState get _value =>
      super._value as _CountryInformationState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object countriesList = freezed,
  }) {
    return _then(_CountryInformationState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      countriesList: countriesList == freezed
          ? _value.countriesList
          : countriesList as List<CountryInformationModel>,
    ));
  }
}

/// @nodoc
class _$_CountryInformationState implements _CountryInformationState {
  _$_CountryInformationState({this.isLoading, this.countriesList});

  @override
  final bool isLoading;
  @override
  final List<CountryInformationModel> countriesList;

  @override
  String toString() {
    return 'CountryInformationState(isLoading: $isLoading, countriesList: $countriesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryInformationState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.countriesList, countriesList) ||
                const DeepCollectionEquality()
                    .equals(other.countriesList, countriesList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(countriesList);

  @JsonKey(ignore: true)
  @override
  _$CountryInformationStateCopyWith<_CountryInformationState> get copyWith =>
      __$CountryInformationStateCopyWithImpl<_CountryInformationState>(
          this, _$identity);
}

abstract class _CountryInformationState implements CountryInformationState {
  factory _CountryInformationState(
          {bool isLoading, List<CountryInformationModel> countriesList}) =
      _$_CountryInformationState;

  @override
  bool get isLoading;
  @override
  List<CountryInformationModel> get countriesList;
  @override
  @JsonKey(ignore: true)
  _$CountryInformationStateCopyWith<_CountryInformationState> get copyWith;
}
