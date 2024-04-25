import 'package:flutter/material.dart';
import 'package:psico_form/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:psico_form/pages/home/psico_form_provider.dart';

class PacientMedicines extends StatelessWidget {
  const PacientMedicines({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PsicoFormProvider>(
      builder: (context, provider, _) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Medicamentos:",
            style: Theme.of(context).textTheme.bodyLarge?.apply(fontWeightDelta: 2),
          ),
          const SizedBox(height: 16.0),
          PsicoInput(
            labelText: "Relacione os medicamentos que você está tomando atualmente:",
            hintText: "Escreva aqui...",
            onChanged: (p0) => {},
          ),
          const SizedBox(height: 12.0),
          PsicoCheckbox(
            value: false,
            leftlabel: 'Se você é mulher, você está grávida?',
            onChanged: (bool? value) => print("Grávida Sim: $value"),
          ),
          const SizedBox(height: 12.0),
          PsicoInput(
            labelText: "Caso afirmativo, quantos meses?",
            hintText: "Escreva aqui...",
            onChanged: (p0) => {},
          ),
        ],
      ),
    );
  }
}
