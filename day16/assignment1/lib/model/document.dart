// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Document {
  String id;
  String collectionId;
  String collectionName;
  String created;
  String updated;
  String title;
  String content;
  String sec_level;
  String? attachment;
  String? attachment_url;
  Document({
    required this.id,
    required this.collectionId,
    required this.collectionName,
    required this.created,
    required this.updated,
    required this.title,
    required this.content,
    required this.sec_level,
    this.attachment,
    this.attachment_url,
  });

  Document copyWith({
    String? id,
    String? collectionId,
    String? collectionName,
    String? created,
    String? updated,
    String? title,
    String? content,
    String? sec_level,
    String? attachment,
    String? attachment_url,
  }) {
    return Document(
      id: id ?? this.id,
      collectionId: collectionId ?? this.collectionId,
      collectionName: collectionName ?? this.collectionName,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      title: title ?? this.title,
      content: content ?? this.content,
      sec_level: sec_level ?? this.sec_level,
      attachment: attachment ?? this.attachment,
      attachment_url: attachment_url ?? this.attachment_url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'collectionId': collectionId,
      'collectionName': collectionName,
      'created': created,
      'updated': updated,
      'title': title,
      'content': content,
      'sec_level': sec_level,
      'attachment': attachment,
      'attachment_url': attachment_url,
    };
  }

  factory Document.fromMap(Map<String, dynamic> map) {
    return Document(
      id: map['id'] as String,
      collectionId: map['collectionId'] as String,
      collectionName: map['collectionName'] as String,
      created: map['created'] as String,
      updated: map['updated'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
      sec_level: map['sec_level'] as String,
      attachment:
          map['attachment'] != null ? map['attachment'] as String : null,
      attachment_url: map['attachment_url'] != null
          ? map['attachment_url'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Document.fromJson(String source) =>
      Document.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Document(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, title: $title, content: $content, sec_level: $sec_level, attachment: $attachment, attachment_url: $attachment_url)';
  }

  @override
  bool operator ==(covariant Document other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.collectionId == collectionId &&
        other.collectionName == collectionName &&
        other.created == created &&
        other.updated == updated &&
        other.title == title &&
        other.content == content &&
        other.sec_level == sec_level &&
        other.attachment == attachment &&
        other.attachment_url == attachment_url;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        collectionId.hashCode ^
        collectionName.hashCode ^
        created.hashCode ^
        updated.hashCode ^
        title.hashCode ^
        content.hashCode ^
        sec_level.hashCode ^
        attachment.hashCode ^
        attachment_url.hashCode;
  }
}
