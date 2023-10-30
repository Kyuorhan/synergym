// Atributos
class ExercicioModel {
  String id;
  String name;
  String training;
  String howToMake;

  // ignore: non_constant_identifier_names
  String? UrlImg;

  // Constructor basico
  // Aonde vai ser usado para inicializar
  ExercicioModel({
    required this.id,
    required this.name,
    required this.training,
    required this.howToMake,
  });

  // Constructor nomeado
  // Aonde vai ser usado informações do banco de dados
  ExercicioModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        training = map["training"],
        howToMake = map["howToMake"],
        UrlImg = map["UrlImg"];

  // Aonde vai ser usado para enviar informação para banco de dados
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "training": training,
      "howToMake": howToMake,
      "UrlImg": UrlImg,
    };
  }
}
