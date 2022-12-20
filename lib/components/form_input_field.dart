import 'package:flutter/material.dart';

class FormInputField extends StatefulWidget {
  
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
            // Para cada alteração no input, ele renderiza tudo de novo
          });
        },
        controller: widget.inputController,
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