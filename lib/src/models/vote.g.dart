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
    final result = <Object>[
      'room',
      serializers.serialize(object.room, specifiedType: const FullType(Room)),
      'impact',
      serializers.serialize(object.impact,
          specifiedType: const FullType(String)),
      'probability',
      serializers.serialize(object.probability,
          specifiedType: const FullType(String)),
      'voter',
      serializers.serialize(object.voter, specifiedType: const FullType(Voter)),
    ];

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
        case 'room':
          result.room.replace(serializers.deserialize(value,
              specifiedType: const FullType(Room)) as Room);
          break;
        case 'impact':
          result.impact = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'probability':
          result.probability = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'voter':
          result.voter.replace(serializers.deserialize(value,
              specifiedType: const FullType(Voter)) as Voter);
          break;
      }
    }

    return result.build();
  }
}

class _$Vote extends Vote {
  @override
  final Room room;
  @override
  final String impact;
  @override
  final String probability;
  @override
  final Voter voter;

  factory _$Vote([void Function(VoteBuilder) updates]) =>
      (new VoteBuilder()..update(updates)).build();

  _$Vote._({this.room, this.impact, this.probability, this.voter}) : super._() {
    if (room == null) {
      throw new BuiltValueNullFieldError('Vote', 'room');
    }
    if (impact == null) {
      throw new BuiltValueNullFieldError('Vote', 'impact');
    }
    if (probability == null) {
      throw new BuiltValueNullFieldError('Vote', 'probability');
    }
    if (voter == null) {
      throw new BuiltValueNullFieldError('Vote', 'voter');
    }
  }

  @override
  Vote rebuild(void Function(VoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VoteBuilder toBuilder() => new VoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Vote &&
        room == other.room &&
        impact == other.impact &&
        probability == other.probability &&
        voter == other.voter;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, room.hashCode), impact.hashCode), probability.hashCode),
        voter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Vote')
          ..add('room', room)
          ..add('impact', impact)
          ..add('probability', probability)
          ..add('voter', voter))
        .toString();
  }
}

class VoteBuilder implements Builder<Vote, VoteBuilder> {
  _$Vote _$v;

  RoomBuilder _room;
  RoomBuilder get room => _$this._room ??= new RoomBuilder();
  set room(RoomBuilder room) => _$this._room = room;

  String _impact;
  String get impact => _$this._impact;
  set impact(String impact) => _$this._impact = impact;

  String _probability;
  String get probability => _$this._probability;
  set probability(String probability) => _$this._probability = probability;

  VoterBuilder _voter;
  VoterBuilder get voter => _$this._voter ??= new VoterBuilder();
  set voter(VoterBuilder voter) => _$this._voter = voter;

  VoteBuilder();

  VoteBuilder get _$this {
    if (_$v != null) {
      _room = _$v.room?.toBuilder();
      _impact = _$v.impact;
      _probability = _$v.probability;
      _voter = _$v.voter?.toBuilder();
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
    _$Vote _$result;
    try {
      _$result = _$v ??
          new _$Vote._(
              room: room.build(),
              impact: impact,
              probability: probability,
              voter: voter.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'room';
        room.build();

        _$failedField = 'voter';
        voter.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Vote', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
