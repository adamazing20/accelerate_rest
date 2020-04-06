// GENERATED CODE - DO NOT MODIFY BY HAND

part of votes;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Votes> _$votesSerializer = new _$VotesSerializer();

class _$VotesSerializer implements StructuredSerializer<Votes> {
  @override
  final Iterable<Type> types = const [Votes, _$Votes];
  @override
  final String wireName = 'Votes';

  @override
  Iterable<Object> serialize(Serializers serializers, Votes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'voteList',
      serializers.serialize(object.voteList,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Vote)])),
    ];

    return result;
  }

  @override
  Votes deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VotesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'voteList':
          result.voteList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Vote)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Votes extends Votes {
  @override
  final BuiltList<Vote> voteList;

  factory _$Votes([void Function(VotesBuilder) updates]) =>
      (new VotesBuilder()..update(updates)).build();

  _$Votes._({this.voteList}) : super._() {
    if (voteList == null) {
      throw new BuiltValueNullFieldError('Votes', 'voteList');
    }
  }

  @override
  Votes rebuild(void Function(VotesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VotesBuilder toBuilder() => new VotesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Votes && voteList == other.voteList;
  }

  @override
  int get hashCode {
    return $jf($jc(0, voteList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Votes')..add('voteList', voteList))
        .toString();
  }
}

class VotesBuilder implements Builder<Votes, VotesBuilder> {
  _$Votes _$v;

  ListBuilder<Vote> _voteList;
  ListBuilder<Vote> get voteList =>
      _$this._voteList ??= new ListBuilder<Vote>();
  set voteList(ListBuilder<Vote> voteList) => _$this._voteList = voteList;

  VotesBuilder();

  VotesBuilder get _$this {
    if (_$v != null) {
      _voteList = _$v.voteList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Votes other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Votes;
  }

  @override
  void update(void Function(VotesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Votes build() {
    _$Votes _$result;
    try {
      _$result = _$v ?? new _$Votes._(voteList: voteList.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'voteList';
        voteList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Votes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
