import 'package:flutter/material.dart';

class PsicoCheckbox extends StatefulWidget {
  const PsicoCheckbox({
    super.key,
    bool? value,
    required String label,
    required Function(bool? value) onChanged,
  })  : _value = value ?? false,
        _label = label,
        _onChanged = onChanged;

  final bool _value;
  final String _label;
  final Function(bool? value) _onChanged;

  @override
  State<PsicoCheckbox> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<PsicoCheckbox> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _isChecked = widget._value;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          //materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          //visualDensity: VisualDensity(horizontal: -4, vertical: -4),
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value!;
              widget._onChanged(_isChecked);
            });
          },
        ),
        Flexible(
          child: Text(widget._label),
        ),
      ],
    );
  }
}
