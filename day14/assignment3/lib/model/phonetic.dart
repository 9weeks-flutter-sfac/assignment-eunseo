// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:assignment3/model/license.dart';

class Phonetic {
  String text;
  String audio;
  String sourceUrl;
  License license;
  Phonetic({
    required this.text,
    required this.audio,
    required this.sourceUrl,
    required this.license,
  });

  Phonetic copyWith({
    String? text,
    String? audio,
    String? sourceUrl,
    License? license,
  }) {
    return Phonetic(
      text: text ?? this.text,
      audio: audio ?? this.audio,
      sourceUrl: sourceUrl ?? this.sourceUrl,
      license: license ?? this.license,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'audio': audio,
      'sourceUrl': sourceUrl,
      'license': license.toMap(),
    };
  }

  factory Phonetic.fromMap(Map<String, dynamic> map) {
    return Phonetic(
      text: map['text'] as String,
      audio: map['audio'] as String,
      sourceUrl: map['sourceUrl'] as String,
      license: License.fromMap(map['license'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Phonetic.fromJson(String source) =>
      Phonetic.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Phonetic(text: $text, audio: $audio, sourceUrl: $sourceUrl, license: $license)';
  }

  @override
  bool operator ==(covariant Phonetic other) {
    if (identical(this, other)) return true;

    return other.text == text &&
        other.audio == audio &&
        other.sourceUrl == sourceUrl &&
        other.license == license;
  }

  @override
  int get hashCode {
    return text.hashCode ^
        audio.hashCode ^
        sourceUrl.hashCode ^
        license.hashCode;
  }
}
