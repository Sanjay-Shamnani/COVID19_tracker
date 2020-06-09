// GENERATED CODE - DO NOT MODIFY BY HAND

part of corona_home;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoronaHome> _$coronaHomeSerializer = new _$CoronaHomeSerializer();

class _$CoronaHomeSerializer implements StructuredSerializer<CoronaHome> {
  @override
  final Iterable<Type> types = const [CoronaHome, _$CoronaHome];
  @override
  final String wireName = 'CoronaHome';

  @override
  Iterable<Object> serialize(Serializers serializers, CoronaHome object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'countries',
      serializers.serialize(object.countries,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Countries)])),
      'confirmed',
      serializers.serialize(object.confirmed,
          specifiedType: const FullType(int)),
      'deaths',
      serializers.serialize(object.deaths, specifiedType: const FullType(int)),
      'recovered',
      serializers.serialize(object.recovered,
          specifiedType: const FullType(int)),
      'active',
      serializers.serialize(object.active, specifiedType: const FullType(int)),
      'deltaConfirmed',
      serializers.serialize(object.deltaConfirmed,
          specifiedType: const FullType(int)),
      'deltaDeaths',
      serializers.serialize(object.deltaDeaths,
          specifiedType: const FullType(int)),
      'deltaRecovered',
      serializers.serialize(object.deltaRecovered,
          specifiedType: const FullType(int)),
      'deltaActive',
      serializers.serialize(object.deltaActive,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CoronaHome deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoronaHomeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'countries':
          result.countries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Countries)]))
              as BuiltList<Object>);
          break;
        case 'confirmed':
          result.confirmed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deaths':
          result.deaths = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'recovered':
          result.recovered = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deltaConfirmed':
          result.deltaConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deltaDeaths':
          result.deltaDeaths = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deltaRecovered':
          result.deltaRecovered = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deltaActive':
          result.deltaActive = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CoronaHome extends CoronaHome {
  @override
  final String date;
  @override
  final BuiltList<Countries> countries;
  @override
  final int confirmed;
  @override
  final int deaths;
  @override
  final int recovered;
  @override
  final int active;
  @override
  final int deltaConfirmed;
  @override
  final int deltaDeaths;
  @override
  final int deltaRecovered;
  @override
  final int deltaActive;

  factory _$CoronaHome([void Function(CoronaHomeBuilder) updates]) =>
      (new CoronaHomeBuilder()..update(updates)).build();

  _$CoronaHome._(
      {this.date,
      this.countries,
      this.confirmed,
      this.deaths,
      this.recovered,
      this.active,
      this.deltaConfirmed,
      this.deltaDeaths,
      this.deltaRecovered,
      this.deltaActive})
      : super._() {
    if (date == null) {
      throw new BuiltValueNullFieldError('CoronaHome', 'date');
    }
    if (countries == null) {
      throw new BuiltValueNullFieldError('CoronaHome', 'countries');
    }
    if (confirmed == null) {
      throw new BuiltValueNullFieldError('CoronaHome', 'confirmed');
    }
    if (deaths == null) {
      throw new BuiltValueNullFieldError('CoronaHome', 'deaths');
    }
    if (recovered == null) {
      throw new BuiltValueNullFieldError('CoronaHome', 'recovered');
    }
    if (active == null) {
      throw new BuiltValueNullFieldError('CoronaHome', 'active');
    }
    if (deltaConfirmed == null) {
      throw new BuiltValueNullFieldError('CoronaHome', 'deltaConfirmed');
    }
    if (deltaDeaths == null) {
      throw new BuiltValueNullFieldError('CoronaHome', 'deltaDeaths');
    }
    if (deltaRecovered == null) {
      throw new BuiltValueNullFieldError('CoronaHome', 'deltaRecovered');
    }
    if (deltaActive == null) {
      throw new BuiltValueNullFieldError('CoronaHome', 'deltaActive');
    }
  }

  @override
  CoronaHome rebuild(void Function(CoronaHomeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoronaHomeBuilder toBuilder() => new CoronaHomeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoronaHome &&
        date == other.date &&
        countries == other.countries &&
        confirmed == other.confirmed &&
        deaths == other.deaths &&
        recovered == other.recovered &&
        active == other.active &&
        deltaConfirmed == other.deltaConfirmed &&
        deltaDeaths == other.deltaDeaths &&
        deltaRecovered == other.deltaRecovered &&
        deltaActive == other.deltaActive;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, date.hashCode),
                                        countries.hashCode),
                                    confirmed.hashCode),
                                deaths.hashCode),
                            recovered.hashCode),
                        active.hashCode),
                    deltaConfirmed.hashCode),
                deltaDeaths.hashCode),
            deltaRecovered.hashCode),
        deltaActive.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CoronaHome')
          ..add('date', date)
          ..add('countries', countries)
          ..add('confirmed', confirmed)
          ..add('deaths', deaths)
          ..add('recovered', recovered)
          ..add('active', active)
          ..add('deltaConfirmed', deltaConfirmed)
          ..add('deltaDeaths', deltaDeaths)
          ..add('deltaRecovered', deltaRecovered)
          ..add('deltaActive', deltaActive))
        .toString();
  }
}

class CoronaHomeBuilder implements Builder<CoronaHome, CoronaHomeBuilder> {
  _$CoronaHome _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  ListBuilder<Countries> _countries;
  ListBuilder<Countries> get countries =>
      _$this._countries ??= new ListBuilder<Countries>();
  set countries(ListBuilder<Countries> countries) =>
      _$this._countries = countries;

  int _confirmed;
  int get confirmed => _$this._confirmed;
  set confirmed(int confirmed) => _$this._confirmed = confirmed;

  int _deaths;
  int get deaths => _$this._deaths;
  set deaths(int deaths) => _$this._deaths = deaths;

  int _recovered;
  int get recovered => _$this._recovered;
  set recovered(int recovered) => _$this._recovered = recovered;

  int _active;
  int get active => _$this._active;
  set active(int active) => _$this._active = active;

  int _deltaConfirmed;
  int get deltaConfirmed => _$this._deltaConfirmed;
  set deltaConfirmed(int deltaConfirmed) =>
      _$this._deltaConfirmed = deltaConfirmed;

  int _deltaDeaths;
  int get deltaDeaths => _$this._deltaDeaths;
  set deltaDeaths(int deltaDeaths) => _$this._deltaDeaths = deltaDeaths;

  int _deltaRecovered;
  int get deltaRecovered => _$this._deltaRecovered;
  set deltaRecovered(int deltaRecovered) =>
      _$this._deltaRecovered = deltaRecovered;

  int _deltaActive;
  int get deltaActive => _$this._deltaActive;
  set deltaActive(int deltaActive) => _$this._deltaActive = deltaActive;

  CoronaHomeBuilder();

  CoronaHomeBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _countries = _$v.countries?.toBuilder();
      _confirmed = _$v.confirmed;
      _deaths = _$v.deaths;
      _recovered = _$v.recovered;
      _active = _$v.active;
      _deltaConfirmed = _$v.deltaConfirmed;
      _deltaDeaths = _$v.deltaDeaths;
      _deltaRecovered = _$v.deltaRecovered;
      _deltaActive = _$v.deltaActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoronaHome other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CoronaHome;
  }

  @override
  void update(void Function(CoronaHomeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CoronaHome build() {
    _$CoronaHome _$result;
    try {
      _$result = _$v ??
          new _$CoronaHome._(
              date: date,
              countries: countries.build(),
              confirmed: confirmed,
              deaths: deaths,
              recovered: recovered,
              active: active,
              deltaConfirmed: deltaConfirmed,
              deltaDeaths: deltaDeaths,
              deltaRecovered: deltaRecovered,
              deltaActive: deltaActive);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'countries';
        countries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CoronaHome', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
