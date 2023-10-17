// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  String avatar;
  String collectionId;
  String collectionName;
  String created;
  bool emailVisibility;
  String id;
  String name;
  String updated;
  String username;
  bool verified;
  User({
    required this.avatar,
    required this.collectionId,
    required this.collectionName,
    required this.created,
    required this.emailVisibility,
    required this.id,
    required this.name,
    required this.updated,
    required this.username,
    required this.verified,
  });

  User copyWith({
    String? avatar,
    String? collectionId,
    String? collectionName,
    String? created,
    bool? emailVisibility,
    String? id,
    String? name,
    String? updated,
    String? username,
    bool? verified,
  }) {
    return User(
      avatar: avatar ?? this.avatar,
      collectionId: collectionId ?? this.collectionId,
      collectionName: collectionName ?? this.collectionName,
      created: created ?? this.created,
      emailVisibility: emailVisibility ?? this.emailVisibility,
      id: id ?? this.id,
      name: name ?? this.name,
      updated: updated ?? this.updated,
      username: username ?? this.username,
      verified: verified ?? this.verified,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avatar': avatar,
      'collectionId': collectionId,
      'collectionName': collectionName,
      'created': created,
      'emailVisibility': emailVisibility,
      'id': id,
      'name': name,
      'updated': updated,
      'username': username,
      'verified': verified,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      avatar: map['avatar'] as String,
      collectionId: map['collectionId'] as String,
      collectionName: map['collectionName'] as String,
      created: map['created'] as String,
      emailVisibility: map['emailVisibility'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      updated: map['updated'] as String,
      username: map['username'] as String,
      verified: map['verified'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(avatar: $avatar, collectionId: $collectionId, collectionName: $collectionName, created: $created, emailVisibility: $emailVisibility, id: $id, name: $name, updated: $updated, username: $username, verified: $verified)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.avatar == avatar &&
        other.collectionId == collectionId &&
        other.collectionName == collectionName &&
        other.created == created &&
        other.emailVisibility == emailVisibility &&
        other.id == id &&
        other.name == name &&
        other.updated == updated &&
        other.username == username &&
        other.verified == verified;
  }

  @override
  int get hashCode {
    return avatar.hashCode ^
        collectionId.hashCode ^
        collectionName.hashCode ^
        created.hashCode ^
        emailVisibility.hashCode ^
        id.hashCode ^
        name.hashCode ^
        updated.hashCode ^
        username.hashCode ^
        verified.hashCode;
  }
}
