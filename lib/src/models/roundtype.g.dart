// GENERATED CODE - DO NOT MODIFY BY HAND

part of roundtype;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RoundType _$impact = const RoundType._('Impact');
const RoundType _$probability = const RoundType._('Probability');
const RoundType _$riskScore = const RoundType._('RiskScore');

RoundType _$valueOf(String name) {
  switch (name) {
    case 'Impact':
      return _$impact;
    case 'Probability':
      return _$probability;
    case 'RiskScore':
      return _$riskScore;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<RoundType> _$values = new BuiltSet<RoundType>(const <RoundType>[
  _$impact,
  _$probability,
  _$riskScore,
]);

Serializer<RoundType> _$roundTypeSerializer = new _$RoundTypeSerializer();

class _$RoundTypeSerializer implements PrimitiveSerializer<RoundType> {
  @override
  final Iterable<Type> types = const <Type>[RoundType];
  @override
  final String wireName = 'RoundType';

  @override
  Object serialize(Serializers serializers, RoundType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  RoundType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RoundType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
