import 'package:equatable/equatable.dart';
import 'dart:convert';

class Book extends Equatable {
  final String id;
  Book({
    required this.id,
  });

  Book copyWith({
    String? id,
  }) {
    return Book(
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) =>
      Book.fromMap(json.decode(source));

  @override
  String toString() => 'Book(id: $id)';

  @override
  List<Object> get props => [id];
}
