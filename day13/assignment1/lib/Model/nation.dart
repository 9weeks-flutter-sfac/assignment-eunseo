// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Nation {
  int id;
  String uid;
  String nationality;
  String capital;
  String national_sport;
  String flag;
  Nation({
    required this.id,
    required this.uid,
    required this.nationality,
    required this.capital,
    required this.national_sport,
    required this.flag,
  });

  Nation copyWith({
    int? id,
    String? uid,
    String? nationality,
    String? capital,
    String? national_sport,
    String? flag,
  }) {
    return Nation(
      id: id ?? this.id,
      uid: uid ?? this.uid,
      nationality: nationality ?? this.nationality,
      capital: capital ?? this.capital,
      national_sport: national_sport ?? this.national_sport,
      flag: flag ?? this.flag,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uid': uid,
      'nationality': nationality,
      'capital': capital,
      'national_sport': national_sport,
      'flag': flag,
    };
  }

  factory Nation.fromMap(Map<String, dynamic> map) {
    return Nation(
      id: map['id'] as int,
      uid: map['uid'] as String,
      nationality: map['nationality'] as String,
      capital: map['capital'] as String,
      national_sport: map['national_sport'] as String,
      flag: map['flag'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Nation.fromJson(String source) =>
      Nation.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Nation(id: $id, uid: $uid, nationality: $nationality, capital: $capital, national_sport: $national_sport, flag: $flag)';
  }

  @override
  bool operator ==(covariant Nation other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.uid == uid &&
        other.nationality == nationality &&
        other.capital == capital &&
        other.national_sport == national_sport &&
        other.flag == flag;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        uid.hashCode ^
        nationality.hashCode ^
        capital.hashCode ^
        national_sport.hashCode ^
        flag.hashCode;
  }
}
