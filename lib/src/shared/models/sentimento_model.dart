class SentimentoModel {
  String id;
  String sentindo;
  String date;

  // Constructor basico
  // Aonde vai ser usado para inicializar
  SentimentoModel({
    required this.id,
    required this.sentindo,
    required this.date,
  });

  // Constructor nomeado
  // Aonde vai ser usado informações do banco de dados
  // Metodo para converte de um map
  SentimentoModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        sentindo = map["sentindo"],
        date = map["date"];

  // Aonde vai ser usado para enviar informação para banco de dados
  // Metodo para transforma em um map
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "sentindo": sentindo,
      "date": date,
    };
  }
}
