import 'package:flutter/material.dart';
import 'package:psico_form/widgets/widgets.dart';

class PacientItems extends StatelessWidget {
  const PacientItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Assinale, a seguir, os itens que se aplicam a você (presente e passado):",
          style: Theme.of(context).textTheme.bodyLarge?.apply(fontWeightDelta: 2),
        ),
        const SizedBox(height: 8.0),
        Wrap(
          direction: Axis.horizontal,
          children: <Widget>[
            PsicoCheckbox(
              value: false,
              rightlabel: 'Epilepsia',
              onChanged: (bool? value) => print("Epilepsia: $value"),
            ),
            PsicoCheckbox(
              value: false,
              rightlabel: 'Dores nos olhos/problemas visuais',
              onChanged: (bool? value) => print("Dores/Problemas Visuais: $value"),
            ),
            PsicoCheckbox(
              value: false,
              rightlabel: 'Uso de anfetaminas',
              onChanged: (bool? value) => print("Anfetaminas: $value"),
            ),
            PsicoCheckbox(
              value: false,
              rightlabel: 'Dores de ouvido/perda de audição',
              onChanged: (bool? value) => print("Dores ouvido: $value"),
            ),
            PsicoCheckbox(
              value: false,
              rightlabel: 'Danos cerebrais',
              onChanged: (bool? value) => print("Danos cerebrais: $value"),
            ),
            PsicoCheckbox(
              value: false,
              rightlabel: 'Uso de cocaína',
              onChanged: (bool? value) => print("Uso cocaína: $value"),
            ),
            PsicoCheckbox(
              value: false,
              rightlabel: 'Problemas cardíacos',
              onChanged: (bool? value) => print("Prob cardíacos: $value"),
            ),
            PsicoCheckbox(
              value: false,
              rightlabel: 'Problemas neurológicos',
              onChanged: (bool? value) => print("Prob cardíacos: $value"),
            ),
            PsicoCheckbox(
              value: false,
              rightlabel: 'Uso de benzodiazepínicos (Diazepam, Valium, etc...)',
              onChanged: (bool? value) => print("Prob cardíacos: $value"),
            ),
          ],
        ),
      ],
    );
  }
}
