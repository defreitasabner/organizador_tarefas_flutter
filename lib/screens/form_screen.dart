import 'package:flutter/material.dart';

import 'package:meu_primeiro_app/components/form_input_field.dart';
import 'package:meu_primeiro_app/data/task_inherited.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({
    super.key,
    required this.taskContext
    });

  final BuildContext taskContext;

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  // Chave que fica de olho no estado da widget Form()
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Nova Tarefa'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: 650,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    inputHint: 'Digite uma URL válida para uma imagem'
                  ),
                  Container(
                    height: 100,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all( width: 2, color: Colors.blue )
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        imageController.text,
                        fit: BoxFit.cover,
                        errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                          return Image.asset(
                            'assets/images/nophoto.png'
                          );
                        },
                      ),
                    )
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()) {
                          // Acessando Inherited Widget
                          // Precisamos alterar o contexto
                          // Vamos usar o contexto que veio lá da InitialScreen()
                          TaskInherited.of(widget.taskContext).newTask(
                            nameController.text, 
                            imageController.text, 
                            int.parse(difficultyController.text)
                          );
                          // Feedback positivo para o Usuário
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Nova Tarefa criada!'),
                              backgroundColor: Colors.green,
                              )
                          );
                          // Retorna para a página anterior (InitialScreen())
                          Navigator.pop(context);
                      } else {
                        // Não faz nada
                      }
                    }, 
                    child: const Text(
                      'Criar Nova Tarefa'
                    )
                  )
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}