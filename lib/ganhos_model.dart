import 'dart:convert';

import 'package:uuid/uuid.dart';

class GanhoModel {
  final id = Uuid().v1();
  final String titulo;
  final double valor;
  GanhoModel({
    required this.titulo,
    required this.valor,
  });

  GanhoModel copyWith({
    String? titulo,
    double? valor,
  }) {
    return GanhoModel(
      titulo: titulo ?? this.titulo,
      valor: valor ?? this.valor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'titulo': titulo,
      'valor': valor,
    };
  }

  factory GanhoModel.fromMap(Map<String, dynamic> map) {
    return GanhoModel(
      titulo: map['titulo'] ?? '',
      valor: map['valor']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory GanhoModel.fromJson(String source) =>
      GanhoModel.fromMap(json.decode(source));

  @override
  String toString() => 'GanhoModel(titulo: $titulo, valor: $valor)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GanhoModel &&
        other.titulo == titulo &&
        other.valor == valor;
  }

  @override
  int get hashCode => titulo.hashCode ^ valor.hashCode;
}
