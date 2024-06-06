// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AnimalModel {
  String name;
  String id;
  AnimalModel({
    required this.name,
    required this.id,
  });

  AnimalModel copyWith({
    String? name,
    String? id,
  }) {
    return AnimalModel(
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'id': id,
    };
  }

  factory AnimalModel.fromMap(Map<String, dynamic> map) {
    return AnimalModel(
      name: map['name'] as String,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnimalModel.fromJson(String source) => AnimalModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AnimalModel(name: $name, id: $id)';

  @override
  bool operator ==(covariant AnimalModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
