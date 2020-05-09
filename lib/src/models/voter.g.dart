// GENERATED CODE - DO NOT MODIFY BY HAND

part of voter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Voter> _$voterSerializer = new _$VoterSerializer();

class _$VoterSerializer implements StructuredSerializer<Voter> {
  @override
  final Iterable<Type> types = const [Voter, _$Voter];
  @override
  final String wireName = 'Voter';

  @override
  Iterable<Object> serialize(Serializers serializers, Voter object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'uuid',
      serializers.serialize(object.uuid, specifiedType: const FullType(String)),
    ];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.vote != null) {
      result
        ..add('vote')
        ..add(serializers.serialize(object.vote,
            specifiedType: const FullType(Vote)));
    }
    return result;
  }

  @override
  Voter deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VoterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uuid':
          result.uuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote':
          result.vote.replace(serializers.deserialize(value,
              specifiedType: const FullType(Vote)) as Vote);
          break;
      }
    }

    return result.build();
  }
}

class _$Voter extends Voter {
  @override
  final String name;
  @override
  final String uuid;
  @override
  final Vote vote;

  factory _$Voter([void Function(VoterBuilder) updates]) =>
      (new VoterBuilder()..update(updates)).build();

  _$Voter._({this.name, this.uuid, this.vote}) : super._() {
    if (uuid == null) {
      throw new BuiltValueNullFieldError('Voter', 'uuid');
    }
  }

  @override
  Voter rebuild(void Function(VoterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VoterBuilder toBuilder() => new VoterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Voter &&
        name == other.name &&
        uuid == other.uuid &&
        vote == other.vote;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), uuid.hashCode), vote.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Voter')
          ..add('name', name)
          ..add('uuid', uuid)
          ..add('vote', vote))
        .toString();
  }
}

class VoterBuilder implements Builder<Voter, VoterBuilder> {
  _$Voter _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _uuid;
  String get uuid => _$this._uuid;
  set uuid(String uuid) => _$this._uuid = uuid;

  VoteBuilder _vote;
  VoteBuilder get vote => _$this._vote ??= new VoteBuilder();
  set vote(VoteBuilder vote) => _$this._vote = vote;

  VoterBuilder();

  VoterBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _uuid = _$v.uuid;
      _vote = _$v.vote?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Voter other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Voter;
  }

  @override
  void update(void Function(VoterBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Voter build() {
    _$Voter _$result;
    try {
      _$result =
          _$v ?? new _$Voter._(name: name, uuid: uuid, vote: _vote?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'vote';
        _vote?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Voter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
