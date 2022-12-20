import 'package:flutter/material.dart';

import 'package:meu_primeiro_app/components/task.dart';
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
          children: const [
            Task('Aprender Flutter', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 3),
            Task('Aprender React', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 3),
            Task('Aprender Express', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 4),
            Task('Aprender Express', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 2),
            Task('Aprender Express', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 2),
            Task('Aprender Express', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 1),
            Task('Aprender Express', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 3),
            Task('Aprender Express', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 4),
            SizedBox(height: 80,)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navegação Direta para a página FormScreen()
            Navigator.push(
              context,
              // Renderiza automaticamente a nova página com um botão de voltar
              MaterialPageRoute(
                builder: (context) => const FormScreen()
              )
            );
          },
          child: const Icon(Icons.add),
        ),
      );
  }
}