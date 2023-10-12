// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

class Location {
  int id;
  String name;
  String type;
  String dimension;
  String url;
  String created;
  List<dynamic> residents;
  Location({
    required this.id,
    required this.name,
    required this.type,
    required this.dimension,
    required this.url,
    required this.created,
    required this.residents,
  });

  Location copyWith({
    int? id,
    String? name,
    String? type,
    String? dimension,
    String? url,
    String? created,
    List<dynamic>? residents,
  }) {
    return Location(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      dimension: dimension ?? this.dimension,
      url: url ?? this.url,
      created: created ?? this.created,
      residents: residents ?? this.residents,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
      'dimension': dimension,
      'url': url,
      'created': created,
      'residents': residents,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
        id: map['id'] as int,
        name: map['name'] as String,
        type: map['type'] as String,
        dimension: map['dimension'] as String,
        url: map['url'] as String,
        created: map['created'] as String,
        residents: List<dynamic>.from(
          (map['residents'] as List<dynamic>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Location(id: $id, name: $name, type: $type, dimension: $dimension, url: $url, created: $created, residents: $residents)';
  }

  @override
  bool operator ==(covariant Location other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.name == name &&
        other.type == type &&
        other.dimension == dimension &&
        other.url == url &&
        other.created == created &&
        listEquals(other.residents, residents);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        type.hashCode ^
        dimension.hashCode ^
        url.hashCode ^
        created.hashCode ^
        residents.hashCode;
  }
}
