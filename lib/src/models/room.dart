library room;

import 'dart:convert';

import 'package:accelerate_rest/src/models/round.dart';
import 'package:accelerate_rest/src/models/serializers.dart';
import 'package:accelerate_rest/src/models/vote.dart';
import 'package:accelerate_rest/src/models/voter.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'room.g.dart';

abstract class Room implements Built<Room, RoomBuilder> {
  static Serializer<Room> get serializer => _$roomSerializer;

  String get name;

  @nullable
  String get uuid;

  Round get round;

  @nullable
  BuiltList<Voter> get voterList;

  String toJson() {
    return json.encode(serializers.serializeWith(Room.serializer, this));
  }

  static Room fromJson(String jsonString) {
    return serializers.deserializeWith(Room.serializer, jsonDecode(jsonString));
  }

  Room._();

  factory Room([void Function(RoomBuilder) updates]) = _$Room;
}
