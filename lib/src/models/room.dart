library room;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'room.g.dart';

abstract class Room implements Built<Room, RoomBuilder> {
  static Serializer<Room> get serializer => _$roomSerializer;
  @nullable
  String get name;
  @nullable
  String get uuid;

  Room._();
  factory Room([void Function(RoomBuilder) updates]) = _$Room;
}