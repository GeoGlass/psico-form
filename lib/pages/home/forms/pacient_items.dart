import 'package:flutter/material.dart';
import 'package:psico_form/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:psico_form/pages/home/psico_form_provider.dart';

class PacientItems extends StatelessWidget {
  const PacientItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PsicoFormProvider>(
      builder: (context, provider, _) => Column(
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
                onChanged: (bool? value) => provider.setEplepsia(value ?? false),
              ),
              PsicoCheckbox(
                value: false,
                rightlabel: 'Dores nos olhos/problemas visuais',
                onChanged: (bool? value) => provider.setProbVisuais(value ?? false),
              ),
              PsicoCheckbox(
                value: false,
                rightlabel: 'Uso de anfetaminas',
                onChanged: (bool? value) => provider.setAnfetaminas(value ?? false),
              ),
              PsicoCheckbox(
                value: false,
                rightlabel: 'Dores de ouvido/perda de audição',
                onChanged: (bool? value) => provider.setPerdaAudicao(value ?? false),
              ),
              PsicoCheckbox(
                value: false,
                rightlabel: 'Danos cerebrais',
                onChanged: (bool? value) => provider.setDanosCerebrais(value ?? false),
              ),
              PsicoCheckbox(
                value: false,
                rightlabel: 'Uso de cocaína',
                onChanged: (bool? value) => provider.setCocaina(value ?? false),
              ),
              PsicoCheckbox(
                value: false,
                rightlabel: 'Problemas cardíacos',
                onChanged: (bool? value) => provider.setCardiaco(value ?? false),
              ),
              PsicoCheckbox(
                value: false,
                rightlabel: 'Problemas neurológicos',
                onChanged: (bool? value) => provider.setNeurologicos(value ?? false),
              ),
              PsicoCheckbox(
                value: false,
                rightlabel: 'Uso de benzodiazepínicos (Diazepam, Valium, etc...)',
                onChanged: (bool? value) => provider.setBenzodiazepinicos(value ?? false),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
