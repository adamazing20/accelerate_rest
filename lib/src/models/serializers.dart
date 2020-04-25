library serializers;

import 'package:accelerate_rest/src/models/event.dart';
import 'package:accelerate_rest/src/models/event_type.dart';
import 'package:accelerate_rest/src/models/room.dart';
import 'package:accelerate_rest/src/models/round.dart';
import 'package:accelerate_rest/src/models/roundsubtype.dart';
import 'package:accelerate_rest/src/models/roundtype.dart';
import 'package:accelerate_rest/src/models/vote.dart';
import 'package:accelerate_rest/src/models/voter.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

/// Collection of generated serializers for the built_value chat example.
@SerializersFor([
  Vote,
  Room,
  Voter,
  RoundType,
  RoundSubType,
  EventType,
  Event,
  Round,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
