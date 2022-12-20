import 'package:flutter/material.dart';

import 'package:meu_primeiro_app/components/difficulty.dart';


class Task extends StatefulWidget {
  final String name;
  final String picture;
  final int difficultyLevel;

  Task(this.name, this.picture, this.difficultyLevel, {super.key});

  // Essa informação precisa ficar guardada, logo precisa ficar aqui
  // Se ela ficar no estado, ela é perdida toda vez que o widget é refeito
  int level = 0;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.blue
            ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4)
                      ),
                      width: 72,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(
                          widget.picture,
                          fit: BoxFit.cover
                        ),
                      ),
                      ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            widget.name,
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Difficulty(difficultyLevel: widget.difficultyLevel)
                      ],
                    ),
                    SizedBox(
                      height: 52,
                      width: 52,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            widget.level++;
                          });
                        }, 
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.arrow_drop_up
                            ),
                            Text(
                              'Up',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            )
                          ],
                        )
                      ),
                    )
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: LinearProgressIndicator(
                      color: Colors.white,
                      value: (widget.difficultyLevel > 0) ? ( widget.level / widget.difficultyLevel ) / 10 : 1 ,
                    ),
                  ),
                  Text(
                    'Nível ${widget.level}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                  )
                ],
              ),
            )
            ]
          )
        ],
      ),
    );
  }
}