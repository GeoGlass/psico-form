import 'package:flutter/material.dart';
import 'package:psico_form/widgets/widgets.dart';

class PacientHealth extends StatelessWidget {
  const PacientHealth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Saúde:",
          style: Theme.of(context).textTheme.bodyLarge?.apply(fontWeightDelta: 2),
        ),
        const SizedBox(height: 8.0),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Você se considera estar com boa saúde?',
          onChanged: (bool? value) => print("Você se considera estar com boa saúde: $value"),
        ),
        PsicoInput(
          labelText: "Qual tipo de problemas de saúde você está enfrentando?",
          hintText: "Escreva aqui...",
          onChanged: (p0) => {},
        ),
        const SizedBox(height: 12.0),
        PsicoInput(
          labelText: "Como você costuma enfrentar situações difíceis ou de estresse? (estratégias que funcionam?)",
          hintText: "Escreva aqui...",
          onChanged: (p0) => {},
        ),
        const SizedBox(height: 12.0),
        PsicoInput(
          labelText: "Quem são as pessoas que te dão apoio nos momentos difíceis?",
          hintText: "Escreva aqui...",
          onChanged: (p0) => {},
        ),
        const SizedBox(height: 12.0),
        PsicoInput(
          labelText: "Cite algumas das suas qualidades que ajudam a lidar com a vida",
          hintText: "Escreva aqui...",
          onChanged: (p0) => {},
        ),
      ],
    );
  }
}
