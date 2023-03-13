import 'package:equatable/equatable.dart';
import 'dart:convert';

class {{name.pascalCase()}} extends Equatable {
  final String id;
  {{name.pascalCase()}}({
    required this.id,
  });

  {{name.pascalCase()}} copyWith({
    String? id,
  }) {
    return {{name.pascalCase()}}(
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
    };
  }

  factory {{name.pascalCase()}}.fromMap(Map<String, dynamic> map) {
    return {{name.pascalCase()}}(
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory {{name.pascalCase()}}.fromJson(String source) =>
      {{name.pascalCase()}}.fromMap(json.decode(source));

  @override
  String toString() => '{{name.pascalCase()}}(id: $id)';

  @override
  List<Object> get props => [id];
}
