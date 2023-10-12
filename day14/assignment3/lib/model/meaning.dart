// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:assignment3/model/definition.dart';
import 'package:collection/collection.dart';

class Meaning {
  String partOfSpeech;
  List<Definition> definitions;
  List<dynamic> synonyms;
  List<dynamic> antonyms;
  Meaning({
    required this.partOfSpeech,
    required this.definitions,
    required this.synonyms,
    required this.antonyms,
  });

  Meaning copyWith({
    String? partOfSpeech,
    List<Definition>? definitions,
    List<dynamic>? synonyms,
    List<dynamic>? antonyms,
  }) {
    return Meaning(
      partOfSpeech: partOfSpeech ?? this.partOfSpeech,
      definitions: definitions ?? this.definitions,
      synonyms: synonyms ?? this.synonyms,
      antonyms: antonyms ?? this.antonyms,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partOfSpeech': partOfSpeech,
      'definitions': definitions.map((x) => x.toMap()).toList(),
      'synonyms': synonyms,
      'antonyms': antonyms,
    };
  }

  factory Meaning.fromMap(Map<String, dynamic> map) {
    return Meaning(
      partOfSpeech: map['partOfSpeech'] as String,
      definitions: List<Definition>.from(
        (map['definitions'] as List<dynamic>).map<Definition>(
          (x) => Definition.fromMap(x as Map<String, dynamic>),
        ),
      ),
      synonyms: List<dynamic>.from((map['synonyms'] as List<dynamic>)),
      antonyms: List<dynamic>.from((map['antonyms'] as List<dynamic>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Meaning.fromJson(String source) =>
      Meaning.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Meaning(partOfSpeech: $partOfSpeech, definitions: $definitions, synonyms: $synonyms, antonyms: $antonyms)';
  }

  @override
  bool operator ==(covariant Meaning other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.partOfSpeech == partOfSpeech &&
        listEquals(other.definitions, definitions) &&
        listEquals(other.synonyms, synonyms) &&
        listEquals(other.antonyms, antonyms);
  }

  @override
  int get hashCode {
    return partOfSpeech.hashCode ^
        definitions.hashCode ^
        synonyms.hashCode ^
        antonyms.hashCode;
  }
}
