import 'package:flutter/material.dart';

class PsicoInput extends StatelessWidget {
  const PsicoInput({
    super.key,
    final String? labelText,
    final String? hintText,
    final bool? enabled,
    required final Function(String) onChanged,
  })  : _labelText = labelText,
        _hintText = hintText,
        _enabled = enabled,
        _onChanged = onChanged;

  final String? _labelText;
  final String? _hintText;
  final bool? _enabled;
  final Function(String) _onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: _enabled,
      onChanged: _onChanged,
      decoration: InputDecoration(
        labelText: _labelText,
        hintText: _hintText,
      ),
    );
  }
}
