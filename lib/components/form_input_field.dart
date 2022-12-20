import 'package:flutter/material.dart';

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