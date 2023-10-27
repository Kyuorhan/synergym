import 'package:flutter/material.dart';
import 'package:gymapp/src/shared/models/exercicio_model.dart';
import 'package:gymapp/src/shared/models/sentimento_model.dart';
import 'package:gymapp/src/shared/themes/app_colors.dart';
import 'package:gymapp/src/shared/themes/app_text_style.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ExercicioModel exercicioModel = ExercicioModel(
    id: "EX001",
    name: "Remada baixa",
    training: "Treino A",
    howToMake: "Segura a barra e levanta",
  );

  final List<SentimentoModel> listaSentimentos = [
    SentimentoModel(
      id: "SE001",
      sentindo: "Pouca ativação hoje!",
      date: "2023-10-20",
    ),
    SentimentoModel(
      id: "SE002",
      sentindo: "Já senti alguma ativação!",
      date: "2023-10-20",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
          backgroundColor: AppColors.appBars,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(32),
            ),
          ),
          toolbarHeight: 72,
          title: Column(
            children: [
              Text(
                exercicioModel.name,
                style: TextStyles.titleHome,
              ),
              Text(
                exercicioModel.training,
                style: TextStyles.subtitleHome,
              ),
            ],
          ),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Fab foi clicado!");
          },
          child: const Icon(Icons.add),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child:
                          Text(style: TextStyles.buttonPrimary, "Enviar foto"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child:
                          Text(style: TextStyles.buttonPrimary, "Tirar Foto"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(style: TextStyles.textStyleHeading, "Como fazer?"),
              const SizedBox(height: 8),
              Text(
                style: TextStyles.textStyleBody,
                "Segura com as duas mãos na barra, mantem a coluna reta e puxa!",
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(color: Colors.black12),
              ),
              Text(
                style: TextStyles.textStyleHeading,
                "Como estou me sentindo?",
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(listaSentimentos.length, (index) {
                  SentimentoModel sentimentoAgora = listaSentimentos[index];
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      style: TextStyles.titleListView,
                      sentimentoAgora.sentindo,
                    ),
                    subtitle: Text(
                      style: TextStyles.subTitleListView,
                      sentimentoAgora.date,
                    ),
                    leading: const Icon(Icons.double_arrow),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: AppColors.delete),
                      onPressed: () {
                        print("DELETAR ${sentimentoAgora.sentindo}");
                      },
                    ),
                  );
                }),
              )
            ],
          ),
        ));
  }
}
