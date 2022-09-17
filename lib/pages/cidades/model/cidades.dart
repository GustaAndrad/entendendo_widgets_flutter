// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/*
  Entidade cidade com seus atributos, construtor e factorys para ser usado no
  exemplo da 'cidades_page.dart'
*/

class Cidade {
  final String cidade;
  final String estado;

  Cidade(this.cidade, this.estado);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidade': cidade,
      'estado': estado,
    };
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      map['cidade'] as String,
      map['estado'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cidade.fromJson(String source) =>
      Cidade.fromMap(json.decode(source) as Map<String, dynamic>);
}
