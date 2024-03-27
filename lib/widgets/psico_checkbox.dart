import 'package:flutter/material.dart';

class PsicoCheckbox extends StatefulWidget {
  const PsicoCheckbox({super.key});

  @override
  State<PsicoCheckbox> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<PsicoCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
