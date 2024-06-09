// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserInfoModel {
  final int id;
  final String username;
  final String email;
  UserInfoModel({
    required this.id,
    required this.username,
    required this.email,
  });

  UserInfoModel copyWith({
    int? id,
    String? username,
    String? email,
  }) {
    return UserInfoModel(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'email': email,
    };
  }

  factory UserInfoModel.fromMap(Map<String, dynamic> map) {
    return UserInfoModel(
      id: map['id'] as int,
      username: map['username'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfoModel.fromJson(String source) =>
      UserInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'UserInfoModel(id: $id, username: $username, email: $email)';

  @override
  bool operator ==(covariant UserInfoModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.username == username && other.email == email;
  }

  @override
  int get hashCode => id.hashCode ^ username.hashCode ^ email.hashCode;
}
