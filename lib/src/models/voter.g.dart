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

  factory _$Voter([void Function(VoterBuilder) updates]) =>
      (new VoterBuilder()..update(updates)).build();

  _$Voter._({this.name, this.uuid}) : super._() {
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
    return other is Voter && name == other.name && uuid == other.uuid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), uuid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Voter')
          ..add('name', name)
          ..add('uuid', uuid))
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

  VoterBuilder();

  VoterBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _uuid = _$v.uuid;
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
    final _$result = _$v ?? new _$Voter._(name: name, uuid: uuid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
