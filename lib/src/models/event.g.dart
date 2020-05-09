// GENERATED CODE - DO NOT MODIFY BY HAND

part of event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Event> _$eventSerializer = new _$EventSerializer();

class _$EventSerializer implements StructuredSerializer<Event> {
  @override
  final Iterable<Type> types = const [Event, _$Event];
  @override
  final String wireName = 'Event';

  @override
  Iterable<Object> serialize(Serializers serializers, Event object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'eventType',
      serializers.serialize(object.eventType,
          specifiedType: const FullType(EventType)),
    ];
    if (object.room != null) {
      result
        ..add('room')
        ..add(serializers.serialize(object.room,
            specifiedType: const FullType(Room)));
    }
    if (object.voter != null) {
      result
        ..add('voter')
        ..add(serializers.serialize(object.voter,
            specifiedType: const FullType(Voter)));
    }
    return result;
  }

  @override
  Event deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'eventType':
          result.eventType = serializers.deserialize(value,
              specifiedType: const FullType(EventType)) as EventType;
          break;
        case 'room':
          result.room.replace(serializers.deserialize(value,
              specifiedType: const FullType(Room)) as Room);
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

class _$Event extends Event {
  @override
  final EventType eventType;
  @override
  final Room room;
  @override
  final Voter voter;

  factory _$Event([void Function(EventBuilder) updates]) =>
      (new EventBuilder()..update(updates)).build();

  _$Event._({this.eventType, this.room, this.voter}) : super._() {
    if (eventType == null) {
      throw new BuiltValueNullFieldError('Event', 'eventType');
    }
  }

  @override
  Event rebuild(void Function(EventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventBuilder toBuilder() => new EventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Event &&
        eventType == other.eventType &&
        room == other.room &&
        voter == other.voter;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, eventType.hashCode), room.hashCode), voter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Event')
          ..add('eventType', eventType)
          ..add('room', room)
          ..add('voter', voter))
        .toString();
  }
}

class EventBuilder implements Builder<Event, EventBuilder> {
  _$Event _$v;

  EventType _eventType;
  EventType get eventType => _$this._eventType;
  set eventType(EventType eventType) => _$this._eventType = eventType;

  RoomBuilder _room;
  RoomBuilder get room => _$this._room ??= new RoomBuilder();
  set room(RoomBuilder room) => _$this._room = room;

  VoterBuilder _voter;
  VoterBuilder get voter => _$this._voter ??= new VoterBuilder();
  set voter(VoterBuilder voter) => _$this._voter = voter;

  EventBuilder();

  EventBuilder get _$this {
    if (_$v != null) {
      _eventType = _$v.eventType;
      _room = _$v.room?.toBuilder();
      _voter = _$v.voter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Event other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Event;
  }

  @override
  void update(void Function(EventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Event build() {
    _$Event _$result;
    try {
      _$result = _$v ??
          new _$Event._(
              eventType: eventType,
              room: _room?.build(),
              voter: _voter?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'room';
        _room?.build();
        _$failedField = 'voter';
        _voter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Event', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
