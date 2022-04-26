import 'dart:convert';

import 'package:flutter/foundation.dart';

class Voter {
  final String name;
  final String email;
  final String id;
  final List<String> ownedElections;

  Voter({
    required this.name,
    required this.email,
    required this.id,
    required this.ownedElections,
  });

  @override
  String toString() {
    return 'Voter(name: $name, email: $email, id: $id, ownedElections: $ownedElections)';
  }

  Voter copyWith({
    String? name,
    String? email,
    String? id,
    List<String>? ownedElections,
  }) {
    return Voter(
      name: name ?? this.name,
      email: email ?? this.email,
      id: id ?? this.id,
      ownedElections: ownedElections ?? this.ownedElections,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'id': id,
      'ownedElections': ownedElections,
    };
  }

  factory Voter.fromMap(Map<String, dynamic> map) {
    return Voter(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      id: map['id'] ?? '',
      ownedElections: List<String>.from(map['ownedElections']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Voter.fromJson(String source) => Voter.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Voter &&
        other.name == name &&
        other.email == email &&
        other.id == id &&
        listEquals(other.ownedElections, ownedElections);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        id.hashCode ^
        ownedElections.hashCode;
  }
}
