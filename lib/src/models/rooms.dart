library rooms;

import 'dart:convert';

import 'package:accelerate_rest/src/models/room.dart';
import 'package:accelerate_rest/src/models/round.dart';
import 'package:accelerate_rest/src/models/serializers.dart';
import 'package:accelerate_rest/src/models/voter.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rooms.g.dart';


abstract class Rooms implements Built<Rooms, RoomsBuilder> {
  static Serializer<Rooms> get serializer => _$roomsSerializer;

  Rooms._();

  @nullable
  BuiltList<Room> get roomList;

  String toJson() {
    return json.encode(serializers.serializeWith(Rooms.serializer, this));
  }

  static Rooms fromJson(String jsonString) {
    return serializers.deserializeWith(
        Rooms.serializer, jsonDecode(jsonString));
  }
  
  factory Rooms([void Function(RoomsBuilder) updates]) = _$Rooms;
}