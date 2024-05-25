
import 'package:intl/intl.dart';

class Previsao{
  static const String nome_tabela = 'tarefas';
  static const campo_id = '_id';
  static const String campo_descricao = 'descricao';

  int? id;
  String descricao;

  Previsao({ required this.id, required this.descricao});

  Map<String, dynamic> toMap() => <String, dynamic>{
    campo_id: id,
  };


  factory Previsao.fromMap(Map<String, dynamic> map) => Previsao(
    id: map[campo_id] is int ? map[campo_id]: null,
    descricao: map[campo_descricao] is String ? map[campo_descricao] : '',
  );

}