// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

class Definition {
  String definition;
  List<dynamic> synonyms;
  List<dynamic> antonyms;
  Definition({
    required this.definition,
    required this.synonyms,
    required this.antonyms,
  });

  Definition copyWith({
    String? definition,
    List<dynamic>? synonyms,
    List<dynamic>? antonyms,
  }) {
    return Definition(
      definition: definition ?? this.definition,
      synonyms: synonyms ?? this.synonyms,
      antonyms: antonyms ?? this.antonyms,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'synonyms': synonyms,
      'antonyms': antonyms,
    };
  }

  factory Definition.fromMap(Map<String, dynamic> map) {
    return Definition(
      definition: map['definition'] as String,
      synonyms: map['synonyms'] as List<dynamic>,
      antonyms: map['antonyms'] as List<dynamic>,
    );
  }

  String toJson() => json.encode(toMap());

  factory Definition.fromJson(String source) =>
      Definition.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Definition(definition: $definition, synonyms: $synonyms, antonyms: $antonyms)';

  @override
  bool operator ==(covariant Definition other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.definition == definition &&
        listEquals(other.synonyms, synonyms) &&
        listEquals(other.antonyms, antonyms);
  }

  @override
  int get hashCode =>
      definition.hashCode ^ synonyms.hashCode ^ antonyms.hashCode;
}
