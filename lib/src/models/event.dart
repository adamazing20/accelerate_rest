library event;

import 'dart:convert';

import 'package:accelerate_rest/accelerate_rest.dart';
import 'package:accelerate_rest/src/models/serializers.dart';
import 'package:accelerate_rest/src/models/voter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event.g.dart';

abstract class Event implements Built<Event, EventBuilder> {
  static Serializer<Event> get serializer => _$eventSerializer;

  EventType get eventType;

  @nullable
  Room get room;

  @nullable
  Voter get voter;

  Event._();

  factory Event([void Function(EventBuilder) updates]) = _$Event;

  String toJson() {
    return json.encode(serializers.serializeWith(Event.serializer, this));
  }

  static Event fromJson(String jsonString) {
    return serializers.deserializeWith(
        Event.serializer, jsonDecode(jsonString));
  }
}
