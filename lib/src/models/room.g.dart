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
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.uuid != null) {
      result
        ..add('uuid')
        ..add(serializers.serialize(object.uuid,
            specifiedType: const FullType(String)));
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

  factory _$Room([void Function(RoomBuilder) updates]) =>
      (new RoomBuilder()..update(updates)).build();

  _$Room._({this.name, this.uuid}) : super._();

  @override
  Room rebuild(void Function(RoomBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoomBuilder toBuilder() => new RoomBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Room && name == other.name && uuid == other.uuid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), uuid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Room')
          ..add('name', name)
          ..add('uuid', uuid))
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

  RoomBuilder();

  RoomBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _uuid = _$v.uuid;
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
    final _$result = _$v ?? new _$Room._(name: name, uuid: uuid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
