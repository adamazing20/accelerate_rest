// GENERATED CODE - DO NOT MODIFY BY HAND

part of roundsubtype;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RoundSubType _$discussion = const RoundSubType._('Discussion');
const RoundSubType _$vote = const RoundSubType._('Vote');

RoundSubType _$valueOf(String name) {
  switch (name) {
    case 'Discussion':
      return _$discussion;
    case 'Vote':
      return _$vote;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<RoundSubType> _$values =
    new BuiltSet<RoundSubType>(const <RoundSubType>[
  _$discussion,
  _$vote,
]);

Serializer<RoundSubType> _$roundSubTypeSerializer =
    new _$RoundSubTypeSerializer();

class _$RoundSubTypeSerializer implements PrimitiveSerializer<RoundSubType> {
  @override
  final Iterable<Type> types = const <Type>[RoundSubType];
  @override
  final String wireName = 'RoundSubType';

  @override
  Object serialize(Serializers serializers, RoundSubType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  RoundSubType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RoundSubType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
