library round;

import 'dart:convert';

import 'package:accelerate_rest/src/models/roundsubtype.dart';
import 'package:accelerate_rest/src/models/roundtype.dart';
import 'package:accelerate_rest/src/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'round.g.dart';

abstract class Round implements Built<Round, RoundBuilder> {
  static Serializer<Round> get serializer => _$roundSerializer;

  RoundType get roundType;
  RoundSubType get roundSubType;

  Round._();

  factory Round([void Function(RoundBuilder) updates]) = _$Round;

  String toJson() {
    return json.encode(serializers.serializeWith(Round.serializer, this));
  }

  static Round fromJson(String jsonString) {
    return serializers.deserializeWith(Round.serializer, jsonDecode(jsonString));
  }
}
