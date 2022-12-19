import 'package:flutter/material.dart';

import 'package:meu_primeiro_app/components/task.dart';

class InitialScreen extends StatefulWidget {
  
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  
  bool listIsVisible = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: const Text(
            'Tarefas'
          ),
        ),
        body: AnimatedOpacity(
          opacity: listIsVisible? 1 : 0,
          duration: const Duration(milliseconds: 800),
          child: ListView(
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
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              listIsVisible = !listIsVisible;
            });
          },
          child: const Icon(
            Icons.remove_red_eye
          ),
        ),
      );
  }
}