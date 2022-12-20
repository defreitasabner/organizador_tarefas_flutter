import 'package:flutter/material.dart';

import 'package:meu_primeiro_app/components/form_input_field.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Tarefa'),
      ),
      body: Center(
        child: Container(
          height: 650,
          width: 375,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 3),
          ),
          child: Column(
            children: [ 
              FormInputField(
                inputLabel: 'Nome da Tarefa',
                inputController: nameController,
                inputHint: 'Digite o nome da nova tarefa',
              ),
              FormInputField(
                inputLabel: 'Dificuldade da Tarefa',
                inputController: difficultyController,
                inputHint: 'Digite a dificuldade da tarefa'
              ),
              FormInputField(
                inputLabel: 'Imagem', 
                inputController: imageController, 
                inputHint: 'Digite o caminho para uma imagem'
              ),
              ElevatedButton(
                onPressed: () {}, 
                child: const Text(
                  'Criar Nova Tarefa'
                )
              )
              ],
            )
        ),
      ),
    );
  }
}