import 'package:flutter/material.dart';

//TODO: Quebrar em um ou mais Widgets, pois os inputs recebem tipos de teclado e dados diferentes
class FormInputField extends StatefulWidget {
  
  final String inputLabel;
  TextEditingController inputController;
  final String inputHint;
  
  FormInputField({
    Key? key,
    required this.inputLabel,
    required this.inputController,
    required this.inputHint
  }) : super(key: key);

  @override
  State<FormInputField> createState() => _FormInputFieldState();
}

class _FormInputFieldState extends State<FormInputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: (text) {
          setState(() {
          });
        },
        validator: (String? value) {
          if(value != null && value.isEmpty) {
            return 'Insira o nome da Tarefa';
          } else {
            return null;
          }
        },
        controller: widget.inputController,
        keyboardType: TextInputType.text,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          fillColor: Colors.white70,
          filled: true,
          labelText: widget.inputLabel,
          hintText: widget.inputHint
        ),
      ),
    );
  }
}