library voter;

import 'dart:convert';
import 'dart:io';

import 'package:accelerate_rest/src/models/serializers.dart';
import 'package:accelerate_rest/src/models/vote.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'voter.g.dart';

abstract class Voter implements Built<Voter, VoterBuilder> {
  static Serializer<Voter> get serializer => _$voterSerializer;

  @nullable
  String get name;

  String get uuid;

  @nullable
  Vote get vote;


  Voter._();

  String toJson() {
    return json.encode(serializers.serializeWith(Voter.serializer, this));
  }

  static Voter fromJson(String jsonString) {
    return serializers.deserializeWith(Voter.serializer, jsonDecode(jsonString));
  }

  factory Voter([void Function(VoterBuilder) updates]) = _$Voter;
}
