// GENERATED CODE - DO NOT MODIFY BY HAND

part of rooms;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Rooms> _$roomsSerializer = new _$RoomsSerializer();

class _$RoomsSerializer implements StructuredSerializer<Rooms> {
  @override
  final Iterable<Type> types = const [Rooms, _$Rooms];
  @override
  final String wireName = 'Rooms';

  @override
  Iterable<Object> serialize(Serializers serializers, Rooms object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.roomList != null) {
      result
        ..add('roomList')
        ..add(serializers.serialize(object.roomList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Room)])));
    }
    return result;
  }

  @override
  Rooms deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RoomsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'roomList':
          result.roomList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Room)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Rooms extends Rooms {
  @override
  final BuiltList<Room> roomList;

  factory _$Rooms([void Function(RoomsBuilder) updates]) =>
      (new RoomsBuilder()..update(updates)).build();

  _$Rooms._({this.roomList}) : super._();

  @override
  Rooms rebuild(void Function(RoomsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoomsBuilder toBuilder() => new RoomsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rooms && roomList == other.roomList;
  }

  @override
  int get hashCode {
    return $jf($jc(0, roomList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Rooms')..add('roomList', roomList))
        .toString();
  }
}

class RoomsBuilder implements Builder<Rooms, RoomsBuilder> {
  _$Rooms _$v;

  ListBuilder<Room> _roomList;
  ListBuilder<Room> get roomList =>
      _$this._roomList ??= new ListBuilder<Room>();
  set roomList(ListBuilder<Room> roomList) => _$this._roomList = roomList;

  RoomsBuilder();

  RoomsBuilder get _$this {
    if (_$v != null) {
      _roomList = _$v.roomList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rooms other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Rooms;
  }

  @override
  void update(void Function(RoomsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Rooms build() {
    _$Rooms _$result;
    try {
      _$result = _$v ?? new _$Rooms._(roomList: _roomList?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'roomList';
        _roomList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Rooms', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
