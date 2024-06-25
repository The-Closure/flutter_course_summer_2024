// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BirdMode {
  String image;
  String family;
  String name;
  BirdMode({
    required this.image,
    required this.family,
    required this.name,
  });

  BirdMode copyWith({
    String? image,
    String? family,
    String? name,
  }) {
    return BirdMode(
      image: image ?? this.image,
      family: family ?? this.family,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'family': family,
      'name': name,
    };
  }

  factory BirdMode.fromMap(Map<String, dynamic> map) {
    return BirdMode(
      image: map['image'] as String,
      family: map['family'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BirdMode.fromJson(String source) => BirdMode.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'BirdMode(image: $image, family: $family, name: $name)';

  @override
  bool operator ==(covariant BirdMode other) {
    if (identical(this, other)) return true;
  
    return 
      other.image == image &&
      other.family == family &&
      other.name == name;
  }

  @override
  int get hashCode => image.hashCode ^ family.hashCode ^ name.hashCode;
}
