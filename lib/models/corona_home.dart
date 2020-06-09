library corona_home;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:corona_tracker/models/serializers.dart';

import 'countries.dart';

part 'corona_home.g.dart';

abstract class CoronaHome implements Built<CoronaHome, CoronaHomeBuilder> {
  CoronaHome._();

  factory CoronaHome([updates(CoronaHomeBuilder b)]) = _$CoronaHome;

  @BuiltValueField(wireName: 'date')
  String get date;
  @BuiltValueField(wireName: 'countries')
  BuiltList<Countries> get countries;
  @BuiltValueField(wireName: 'confirmed')
  int get confirmed;
  @BuiltValueField(wireName: 'deaths')
  int get deaths;
  @BuiltValueField(wireName: 'recovered')
  int get recovered;
  @BuiltValueField(wireName: 'active')
  int get active;
  @BuiltValueField(wireName: 'deltaConfirmed')
  int get deltaConfirmed;
  @BuiltValueField(wireName: 'deltaDeaths')
  int get deltaDeaths;
  @BuiltValueField(wireName: 'deltaRecovered')
  int get deltaRecovered;
  @BuiltValueField(wireName: 'deltaActive')
  int get deltaActive;
  String toJson() {
    return json.encode(serializers.serializeWith(CoronaHome.serializer, this));
  }

  static CoronaHome fromJson(String jsonString) {
    return serializers.deserializeWith(
        CoronaHome.serializer, json.decode(jsonString));
  }

  static Serializer<CoronaHome> get serializer => _$coronaHomeSerializer;
}