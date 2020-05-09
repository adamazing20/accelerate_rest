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
      var room = Room((room) => room
        ..name = "default"
        ..round = Round((round) => round
          ..roundType = RoundType.Probability
          ..roundSubType = RoundSubType.Discussion).toBuilder()
        ..voterList = ListBuilder([
          Voter((voter) => voter
            ..name = "woo"
            ..uuid = "none"..vote=Vote((vote)=> vote..probability="4").toBuilder())
        ]));

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