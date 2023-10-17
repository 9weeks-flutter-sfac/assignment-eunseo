// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Secret {
  String id;
  String collectionId;
  String collectionName;
  String created;
  String updated;
  String secret;
  String author;
  String authorName;
  Secret({
    required this.id,
    required this.collectionId,
    required this.collectionName,
    required this.created,
    required this.updated,
    required this.secret,
    required this.author,
    required this.authorName,
  });

  Secret copyWith({
    String? id,
    String? collectionId,
    String? collectionName,
    String? created,
    String? updated,
    String? secret,
    String? author,
    String? authorName,
  }) {
    return Secret(
      id: id ?? this.id,
      collectionId: collectionId ?? this.collectionId,
      collectionName: collectionName ?? this.collectionName,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      secret: secret ?? this.secret,
      author: author ?? this.author,
      authorName: authorName ?? this.authorName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'collectionId': collectionId,
      'collectionName': collectionName,
      'created': created,
      'updated': updated,
      'secret': secret,
      'author': author,
      'authorName': authorName,
    };
  }

  factory Secret.fromMap(Map<String, dynamic> map) {
    return Secret(
      id: map['id'] as String,
      collectionId: map['collectionId'] as String,
      collectionName: map['collectionName'] as String,
      created: map['created'] as String,
      updated: map['updated'] as String,
      secret: map['secret'] as String,
      author: map['author'] as String,
      authorName: map['authorName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Secret.fromJson(String source) =>
      Secret.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Secret(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, secret: $secret, author: $author, authorName: $authorName)';
  }

  @override
  bool operator ==(covariant Secret other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.collectionId == collectionId &&
        other.collectionName == collectionName &&
        other.created == created &&
        other.updated == updated &&
        other.secret == secret &&
        other.author == author &&
        other.authorName == authorName;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        collectionId.hashCode ^
        collectionName.hashCode ^
        created.hashCode ^
        updated.hashCode ^
        secret.hashCode ^
        author.hashCode ^
        authorName.hashCode;
  }
}
