import 'dart:convert';

import 'package:accelerate_rest/accelerate_rest.dart';
import 'package:accelerate_rest/src/models/room.dart';
import 'package:accelerate_rest/src/models/voter.dart';
import 'package:built_collection/built_collection.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', ()  {
//    setUp(() {
//      awesome = Awesome();
//    });

    test('First Test', () {
      var voter = Voter((v) =>
      v
        ..name = "woof"
        ..uuid = "woofid");

      List<Voter> voterList = [voter];
      var room = Room((r) =>
      r
        ..name = "default"
        ..round = Round.impact
        ..voterList = new BuiltList<Voter>(voterList).toBuilder());

      var jsonString = room.toJson();
      print(jsonEncode(jsonString));

      var roomBackFromJson = Room.fromJson(jsonString);

      print(roomBackFromJson);

//      Room room = vote2.room;
//
//      print(room.name);

//      expect(awesome.isAwesome, isTrue);
    });
  });
}