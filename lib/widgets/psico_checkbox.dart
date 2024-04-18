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
  final ValueNotifier<bool> _isChecked = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _isChecked.value = widget._value;
  }

  @override
  void dispose() {
    _isChecked.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("RENDER ${widget._label}");
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ValueListenableBuilder<bool>(
          valueListenable: _isChecked,
          builder: (context, isFocus, _) => Checkbox(
            //materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //visualDensity: VisualDensity(horizontal: -4, vertical: -4),
            value: _isChecked.value,
            onChanged: (bool? value) {
              _isChecked.value = value!;
              widget._onChanged(_isChecked.value);
            },
          ),
        ),
        Flexible(
          child: Text(widget._label),
        ),
      ],
    );
  }
}
