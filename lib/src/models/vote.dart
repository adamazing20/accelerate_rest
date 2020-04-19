library vote;

import 'dart:convert';

import 'package:accelerate_rest/src/models/room.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'vote.g.dart';

abstract class Vote implements Built<Vote, VoteBuilder> {
  static Serializer<Vote> get serializer => _$voteSerializer;
  Room get room;
  String get impact;
  String get probability;

  Vote._();
  factory Vote([void Function(VoteBuilder) updates]) = _$Vote;

  String toJson() {
    return json.encode(serializers.serializeWith(Vote.serializer, this));
  }

  static Vote fromJson(String jsonString) {
    return serializers.deserializeWith(Vote.serializer, jsonDecode(jsonString));
  }
}