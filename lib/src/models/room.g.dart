// GENERATED CODE - DO NOT MODIFY BY HAND

part of room;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Room> _$roomSerializer = new _$RoomSerializer();

class _$RoomSerializer implements StructuredSerializer<Room> {
  @override
  final Iterable<Type> types = const [Room, _$Room];
  @override
  final String wireName = 'Room';

  @override
  Iterable<Object> serialize(Serializers serializers, Room object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'round',
      serializers.serialize(object.round, specifiedType: const FullType(Round)),
    ];
    if (object.uuid != null) {
      result
        ..add('uuid')
        ..add(serializers.serialize(object.uuid,
            specifiedType: const FullType(String)));
    }
    if (object.voterList != null) {
      result
        ..add('voterList')
        ..add(serializers.serialize(object.voterList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Voter)])));
    }
    return result;
  }

  @override
  Room deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RoomBuilder();

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
        case 'round':
          result.round.replace(serializers.deserialize(value,
              specifiedType: const FullType(Round)) as Round);
          break;
        case 'voterList':
          result.voterList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Voter)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Room extends Room {
  @override
  final String name;
  @override
  final String uuid;
  @override
  final Round round;
  @override
  final BuiltList<Voter> voterList;

  factory _$Room([void Function(RoomBuilder) updates]) =>
      (new RoomBuilder()..update(updates)).build();

  _$Room._({this.name, this.uuid, this.round, this.voterList}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Room', 'name');
    }
    if (round == null) {
      throw new BuiltValueNullFieldError('Room', 'round');
    }
  }

  @override
  Room rebuild(void Function(RoomBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoomBuilder toBuilder() => new RoomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Room &&
        name == other.name &&
        uuid == other.uuid &&
        round == other.round &&
        voterList == other.voterList;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), uuid.hashCode), round.hashCode),
        voterList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Room')
          ..add('name', name)
          ..add('uuid', uuid)
          ..add('round', round)
          ..add('voterList', voterList))
        .toString();
  }
}

class RoomBuilder implements Builder<Room, RoomBuilder> {
  _$Room _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _uuid;
  String get uuid => _$this._uuid;
  set uuid(String uuid) => _$this._uuid = uuid;

  RoundBuilder _round;
  RoundBuilder get round => _$this._round ??= new RoundBuilder();
  set round(RoundBuilder round) => _$this._round = round;

  ListBuilder<Voter> _voterList;
  ListBuilder<Voter> get voterList =>
      _$this._voterList ??= new ListBuilder<Voter>();
  set voterList(ListBuilder<Voter> voterList) => _$this._voterList = voterList;

  RoomBuilder();

  RoomBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _uuid = _$v.uuid;
      _round = _$v.round?.toBuilder();
      _voterList = _$v.voterList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Room other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Room;
  }

  @override
  void update(void Function(RoomBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Room build() {
    _$Room _$result;
    try {
      _$result = _$v ??
          new _$Room._(
              name: name,
              uuid: uuid,
              round: round.build(),
              voterList: _voterList?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'round';
        round.build();
        _$failedField = 'voterList';
        _voterList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Room', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
