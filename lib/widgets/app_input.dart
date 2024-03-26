import 'package:flutter/material.dart';

class PsicoInput extends StatelessWidget {
  const PsicoInput({
    super.key,
    final String? labelText,
    final String? hintText,
    required final Function(String) onChanged,
  })  : _labelText = labelText,
        _hintText = hintText,
        _onChanged = onChanged;

  final String? _labelText;
  final String? _hintText;
  final Function(String) _onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: _onChanged,
      decoration: InputDecoration(
        labelText: _labelText,
        hintText: _hintText,
      ),
    );
  }
}
