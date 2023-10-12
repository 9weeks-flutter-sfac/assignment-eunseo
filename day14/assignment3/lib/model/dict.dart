// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:assignment3/model/license.dart';
import 'package:assignment3/model/meaning.dart';
import 'package:assignment3/model/phonetic.dart';
import 'package:collection/collection.dart';

class Dict {
  String word;
  String phonetic;
  List<Phonetic> phonetics;
  List<Meaning> meanings;
  License license;
  List<dynamic> sourceUrls;
  Dict({
    required this.word,
    required this.phonetic,
    required this.phonetics,
    required this.meanings,
    required this.license,
    required this.sourceUrls,
  });

  Dict copyWith({
    String? word,
    String? phonetic,
    List<Phonetic>? phonetics,
    List<Meaning>? meanings,
    License? license,
    List<dynamic>? sourceUrls,
  }) {
    return Dict(
      word: word ?? this.word,
      phonetic: phonetic ?? this.phonetic,
      phonetics: phonetics ?? this.phonetics,
      meanings: meanings ?? this.meanings,
      license: license ?? this.license,
      sourceUrls: sourceUrls ?? this.sourceUrls,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'word': word,
      'phonetic': phonetic,
      'phonetics': phonetics.map((x) => x.toMap()).toList(),
      'meanings': meanings.map((x) => x.toMap()).toList(),
      'license': license.toMap(),
      'sourceUrls': sourceUrls,
    };
  }

  factory Dict.fromMap(Map<String, dynamic> map) {
    return Dict(
      word: map['word'] as String,
      phonetic: map['phonetic'] as String,
      phonetics: List<Phonetic>.from(
        (map['phonetics'] as List<dynamic>).map<Phonetic>(
          (x) => Phonetic.fromMap(x as Map<String, dynamic>),
        ),
      ),
      meanings: List<Meaning>.from(
        (map['meanings'] as List<dynamic>).map<Meaning>(
          (x) => Meaning.fromMap(x as Map<String, dynamic>),
        ),
      ),
      license: License.fromMap(map['license'] as Map<String, dynamic>),
      sourceUrls: List<dynamic>.from((map['sourceUrls'] as List<dynamic>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Dict.fromJson(String source) =>
      Dict.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Dict(word: $word, phonetic: $phonetic, phonetics: $phonetics, meanings: $meanings, license: $license, sourceUrls: $sourceUrls)';
  }

  @override
  bool operator ==(covariant Dict other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.word == word &&
        other.phonetic == phonetic &&
        listEquals(other.phonetics, phonetics) &&
        listEquals(other.meanings, meanings) &&
        other.license == license &&
        listEquals(other.sourceUrls, sourceUrls);
  }

  @override
  int get hashCode {
    return word.hashCode ^
        phonetic.hashCode ^
        phonetics.hashCode ^
        meanings.hashCode ^
        license.hashCode ^
        sourceUrls.hashCode;
  }
}
