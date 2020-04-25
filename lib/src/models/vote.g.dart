// GENERATED CODE - DO NOT MODIFY BY HAND

part of vote;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Vote> _$voteSerializer = new _$VoteSerializer();

class _$VoteSerializer implements StructuredSerializer<Vote> {
  @override
  final Iterable<Type> types = const [Vote, _$Vote];
  @override
  final String wireName = 'Vote';

  @override
  Iterable<Object> serialize(Serializers serializers, Vote object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.impact != null) {
      result
        ..add('impact')
        ..add(serializers.serialize(object.impact,
            specifiedType: const FullType(String)));
    }
    if (object.probability != null) {
      result
        ..add('probability')
        ..add(serializers.serialize(object.probability,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Vote deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VoteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'impact':
          result.impact = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'probability':
          result.probability = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Vote extends Vote {
  @override
  final String impact;
  @override
  final String probability;

  factory _$Vote([void Function(VoteBuilder) updates]) =>
      (new VoteBuilder()..update(updates)).build();

  _$Vote._({this.impact, this.probability}) : super._();

  @override
  Vote rebuild(void Function(VoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VoteBuilder toBuilder() => new VoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Vote &&
        impact == other.impact &&
        probability == other.probability;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, impact.hashCode), probability.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Vote')
          ..add('impact', impact)
          ..add('probability', probability))
        .toString();
  }
}

class VoteBuilder implements Builder<Vote, VoteBuilder> {
  _$Vote _$v;

  String _impact;
  String get impact => _$this._impact;
  set impact(String impact) => _$this._impact = impact;

  String _probability;
  String get probability => _$this._probability;
  set probability(String probability) => _$this._probability = probability;

  VoteBuilder();

  VoteBuilder get _$this {
    if (_$v != null) {
      _impact = _$v.impact;
      _probability = _$v.probability;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Vote other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Vote;
  }

  @override
  void update(void Function(VoteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Vote build() {
    final _$result =
        _$v ?? new _$Vote._(impact: impact, probability: probability);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
