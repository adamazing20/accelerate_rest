library votes;
import 'dart:convert';

import 'package:accelerate_rest/accelerate_rest.dart';
import 'package:accelerate_rest/src/models/vote.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
part 'votes.g.dart';

abstract class Votes implements Built<Votes, VotesBuilder> {
  static Serializer<Votes> get serializer => _$votesSerializer;
  BuiltList<Vote> get voteList;

  String toJson() {
    return json.encode(serializers.serializeWith(Votes.serializer, this));
  }

  static Votes fromJson(String jsonString) {
    return serializers.deserializeWith(
        Votes.serializer, jsonDecode(jsonString));
  }

  Votes._();
  factory Votes([void Function(VotesBuilder) updates]) = _$Votes;
}