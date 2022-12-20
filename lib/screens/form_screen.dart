import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  
  TextEditingController nameController = TextEditingController();
  
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
              )
            ],
              )
        ),
      ),
    );
  }
}

class FormInputField extends StatelessWidget {
  
  final String inputLabel;
  final TextEditingController inputController;
  final String inputHint;
  
  const FormInputField({
    Key? key,
    required this.inputLabel,
    required this.inputController,
    required this.inputHint
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: inputController,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          fillColor: Colors.white70,
          filled: true,
          labelText: inputLabel,
          hintText: inputHint
        ),
      ),
    );
  }
}