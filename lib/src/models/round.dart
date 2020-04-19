library round;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'round.g.dart';

class Round extends EnumClass {
  /// Example of how to make an [EnumClass] serializable.
  ///
  /// Declare a static final [Serializers] field called `serializer`.
  /// The built_value code generator will provide the implementation. You need
  /// to do this for every type you want to serialize.
  static Serializer<Round> get serializer => _$roundSerializer;

  static const Round discussion = _$discussion;
  static const Round impact = _$impact;
  static const Round probability = _$probability;
  static const Round results = _$results;

  const Round._(String name) : super(name);

  static BuiltSet<Round> get values => _$values;

  static Round valueOf(String name) => _$valueOf(name);
}
