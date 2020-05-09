library roundtype;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'roundtype.g.dart';

class RoundType extends EnumClass {
  /// Example of how to make an [EnumClass] serializable.
  ///
  /// Declare a static final [Serializers] field called `serializer`.
  /// The built_value code generator will provide the implementation. You need
  /// to do this for every type you want to serialize.
  static Serializer<RoundType> get serializer => _$roundTypeSerializer;

  static const RoundType Impact = _$impact;
  static const RoundType Probability = _$probability;
  static const RoundType RiskScore = _$riskScore;

  const RoundType._(String name) : super(name);

  static BuiltSet<RoundType> get values => _$values;

  static RoundType valueOf(String name) => _$valueOf(name);
}
