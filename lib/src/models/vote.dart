library vote;

import 'dart:convert';

import 'package:accelerate_rest/src/models/room.dart';
import 'package:accelerate_rest/src/models/voter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'vote.g.dart';

abstract class Vote implements Built<Vote, VoteBuilder> {
  static Serializer<Vote> get serializer => _$voteSerializer;
  Room get room;
  String get impact;
  String get probability;
  Voter get voter;

  Vote._();
  factory Vote([void Function(VoteBuilder) updates]) = _$Vote;

  String toJson() {
    return json.encode(serializers.serializeWith(Vote.serializer, this));
  }

  static Vote fromJson(String jsonString) {
    return serializers.deserializeWith(Vote.serializer, jsonDecode(jsonString));
  }
}


/**
 * What we need for a vote?
 * we need a persons name, or generated id
 * we need to know if they have host, and
 * we need to know their vote.
 *
 * class Vote {
 * Room()
 * String name;
 * UUID identifier;
 *  RiskVote();
 * }
 *
 * class Room {
 * UUID roomID
 * name roomName
 * }
 *
 *
 *
 *
 *
 */
