import 'package:flutter/material.dart';

import 'package:meu_primeiro_app/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required super.child,
  });

  final List<Task> taskList = [
    Task('Aprender Flutter', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 3),
    Task('Aprender React', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 3),
    Task('Aprender Express', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 4),
    Task('Aprender Express', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 2),
    Task('Aprender Express', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 2),
    Task('Aprender Express', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 1),
    Task('Aprender Express', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 3),
    Task('Aprender Express', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large', 4)
  ];

  // Regras criadas para a inherited widget
  // Nessa caso específico, criei a regra de como será criada uma nova task
  void newTask(String name, String picture, int difficulty) {
    
    taskList.add(
      Task(name, picture, difficulty)
    );
  
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  // Verifica se existe diferença de estado, comparando o estado atual com o anterior
  // Nesse caso específico, notifica `true` aos interessados caso exista diferença na lista
  @override
  bool updateShouldNotify(TaskInherited old) => taskList.length != old.taskList.length;
}