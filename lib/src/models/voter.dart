library voter;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'voter.g.dart';

abstract class Voter implements Built<Voter, VoterBuilder> {
  static Serializer<Voter> get serializer => _$voterSerializer;
  @nullable
  String get name;

  Voter._();
  factory Voter([void Function(VoterBuilder) updates]) = _$Voter;
}
