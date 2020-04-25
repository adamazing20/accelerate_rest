// GENERATED CODE - DO NOT MODIFY BY HAND

part of round;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Round> _$roundSerializer = new _$RoundSerializer();

class _$RoundSerializer implements StructuredSerializer<Round> {
  @override
  final Iterable<Type> types = const [Round, _$Round];
  @override
  final String wireName = 'Round';

  @override
  Iterable<Object> serialize(Serializers serializers, Round object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'roundType',
      serializers.serialize(object.roundType,
          specifiedType: const FullType(RoundType)),
      'roundSubType',
      serializers.serialize(object.roundSubType,
          specifiedType: const FullType(RoundSubType)),
    ];

    return result;
  }

  @override
  Round deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RoundBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'roundType':
          result.roundType = serializers.deserialize(value,
              specifiedType: const FullType(RoundType)) as RoundType;
          break;
        case 'roundSubType':
          result.roundSubType = serializers.deserialize(value,
              specifiedType: const FullType(RoundSubType)) as RoundSubType;
          break;
      }
    }

    return result.build();
  }
}

class _$Round extends Round {
  @override
  final RoundType roundType;
  @override
  final RoundSubType roundSubType;

  factory _$Round([void Function(RoundBuilder) updates]) =>
      (new RoundBuilder()..update(updates)).build();

  _$Round._({this.roundType, this.roundSubType}) : super._() {
    if (roundType == null) {
      throw new BuiltValueNullFieldError('Round', 'roundType');
    }
    if (roundSubType == null) {
      throw new BuiltValueNullFieldError('Round', 'roundSubType');
    }
  }

  @override
  Round rebuild(void Function(RoundBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoundBuilder toBuilder() => new RoundBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Round &&
        roundType == other.roundType &&
        roundSubType == other.roundSubType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, roundType.hashCode), roundSubType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Round')
          ..add('roundType', roundType)
          ..add('roundSubType', roundSubType))
        .toString();
  }
}

class RoundBuilder implements Builder<Round, RoundBuilder> {
  _$Round _$v;

  RoundType _roundType;
  RoundType get roundType => _$this._roundType;
  set roundType(RoundType roundType) => _$this._roundType = roundType;

  RoundSubType _roundSubType;
  RoundSubType get roundSubType => _$this._roundSubType;
  set roundSubType(RoundSubType roundSubType) =>
      _$this._roundSubType = roundSubType;

  RoundBuilder();

  RoundBuilder get _$this {
    if (_$v != null) {
      _roundType = _$v.roundType;
      _roundSubType = _$v.roundSubType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Round other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Round;
  }

  @override
  void update(void Function(RoundBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Round build() {
    final _$result =
        _$v ?? new _$Round._(roundType: roundType, roundSubType: roundSubType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
