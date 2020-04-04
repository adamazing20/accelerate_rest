import 'dart:convert';

import 'package:accelerate_rest/accelerate_rest.dart';
import 'package:accelerate_rest/src/models/room.dart';
import 'package:accelerate_rest/src/models/serializers.dart';
import 'package:accelerate_rest/src/models/vote.dart';
import 'package:accelerate_rest/src/models/voter.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('A group of tests', () {
    Awesome awesome;

//    setUp(() {
//      awesome = Awesome();
//    });

    test('First Test', () {
      var vote = Vote((b) => b
        ..room = Room((b) => b
          ..name = 'roomName'
          ..uuid = Uuid().toString()).toBuilder()
        ..probability = '2'
        ..impact = '3'
        ..voter = Voter((b) => b..name = 'voterName').toBuilder());

      var serialized = serializers.serialize(vote);
      print(jsonEncode(serialized));
      var vote2 = serializers.deserializeWith(Vote.serializer
          ,serialized);
      print(vote2);

      Room room = vote2.room;

      print(room.name);

//      expect(awesome.isAwesome, isTrue);
    });
  });
}