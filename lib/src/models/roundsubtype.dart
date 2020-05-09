library roundsubtype;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'roundsubtype.g.dart';

class RoundSubType extends EnumClass {
  /// Example of how to make an [EnumClass] serializable.
  ///
  /// Declare a static final [Serializers] field called `serializer`.
  /// The built_value code generator will provide the implementation. You need
  /// to do this for every type you want to serialize.
  static Serializer<RoundSubType> get serializer => _$roundSubTypeSerializer;

  static const RoundSubType Discussion = _$discussion;
  static const RoundSubType Vote = _$vote;

  const RoundSubType._(String name) : super(name);

  static BuiltSet<RoundSubType> get values => _$values;

  static RoundSubType valueOf(String name) => _$valueOf(name);
}
