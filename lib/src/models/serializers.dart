library serializers;

import 'package:accelerate_rest/src/models/room.dart';
import 'package:accelerate_rest/src/models/vote.dart';
import 'package:accelerate_rest/src/models/voter.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

/// Collection of generated serializers for the built_value chat example.
@SerializersFor([
  Vote,
  Room,
  Voter
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();