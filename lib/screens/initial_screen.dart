import 'package:flutter/material.dart';

import 'package:meu_primeiro_app/data/task_inherited.dart';
import 'package:meu_primeiro_app/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: const Text(
            'Tarefas'
          ),
        ),
        body: ListView(
          /// Acessando dados de uma Inherited Widget (precisa ser mãe de todas) 
          children: TaskInherited.of(context).taskList,
          padding: EdgeInsets.only(top: 8, bottom: 64),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navegação Direta para a página FormScreen()
            Navigator.push(
              context,
              // Renderiza automaticamente a nova página com um botão de voltar
              MaterialPageRoute(
                // Vamos ignorar o newContext e passar o context de interesse
                // Para jogar as informações da FormScreen para InitialScreen
                // Passamos o contexto de InitialScreen() como contexto para FormScreen()
                builder: (newContext) => FormScreen(taskContext: context,)
              )
            );
          },
          child: const Icon(Icons.add),
        ),
      );
  }
}