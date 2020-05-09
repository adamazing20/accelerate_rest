library event_type;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'event_type.g.dart';

class EventType extends EnumClass {
  /// Example of how to make an [EnumClass] serializable.
  ///
  /// Declare a static final [Serializers] field called `serializer`.
  /// The built_value code generator will provide the implementation. You need
  /// to do this for every type you want to serialize.
  static Serializer<EventType> get serializer => _$eventTypeSerializer;

  static const EventType voterEvent = _$voterEventType;
  static const EventType roomEvent = _$roomEventType;
  static const EventType errorEvent = _$errorEventType;


  const EventType._(String name) : super(name);

  static BuiltSet<EventType> get values => _$values;

  static EventType valueOf(String name) => _$valueOf(name);
}