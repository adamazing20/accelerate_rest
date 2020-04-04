library room;

import 'dart:convert';

import 'package:accelerate_rest/accelerate_rest.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
//import 'package:uuid/uuid.dart';

part 'room.g.dart';

abstract class Room implements Built<Room, RoomBuilder> {
  static Serializer<Room> get serializer => _$roomSerializer;
  String get name;
  String get uuid;

  Room._();
  factory Room([void Function(RoomBuilder) updates]) = _$Room;
}