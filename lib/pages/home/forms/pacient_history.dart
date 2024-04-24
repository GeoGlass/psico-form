import 'package:flutter/material.dart';
import 'package:psico_form/widgets/widgets.dart';

class PacientHistory extends StatelessWidget {
  const PacientHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Você possui histórico de:",
          style: Theme.of(context).textTheme.bodyLarge?.apply(fontWeightDelta: 2),
        ),
        const SizedBox(height: 8.0),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Tentativa de suicídio?',
          onChanged: (bool? value) => print("Tentativa de suicídio: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Pensamentos suicidas?',
          onChanged: (bool? value) => print("Pensamentos suicidas: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Automutilação (ferir-se propositalmente)?',
          onChanged: (bool? value) => print("Automutilação: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Anorexia ou Bulimia?',
          onChanged: (bool? value) => print("Anorexia ou Bulimia: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Sonambulismo?',
          onChanged: (bool? value) => print("Sonambulismo: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Transtornos do sono? Insônia? Pesadelos?',
          onChanged: (bool? value) => print("Transtornos do sono: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Dores de cabeça resistentes a tratamento?',
          onChanged: (bool? value) => print("Dores de cabeça resistentes: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Pressão alta?',
          onChanged: (bool? value) => print("Pressão alta: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Sobrepeso? Distúrbio de alimentação?',
          onChanged: (bool? value) => print("Sobrepeso: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Crise de pânico?',
          onChanged: (bool? value) => print("Crise de pânico: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Ansiedade excessiva?',
          onChanged: (bool? value) => print("Ansiedade excessiva: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: '\"Nervoso\"? Ataques de fúria?',
          onChanged: (bool? value) => print("Ataques de fúria: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Dificuldade de sair de casa?',
          onChanged: (bool? value) => print("Dificuldade de sair de casa: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Dificuldade em se relacionar com outras pessoas?',
          onChanged: (bool? value) => print("Dificuldade relacionar pessoas: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Vê-se \"diferente\" no espelho?',
          onChanged: (bool? value) => print("Dificuldade relacionar pessoas: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Psicoterapias anteriores com poucos resultados?',
          onChanged: (bool? value) => print("Psicoterapias anteriores: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Sensação de não pertencer?',
          onChanged: (bool? value) => print("Sensação de não pertencer: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Ouve vozes ou diálogos dentro da cabeça?',
          onChanged: (bool? value) => print("Ouve vozes: $value"),
        ),
        PsicoCheckbox(
          value: false,
          leftlabel: 'Pensamentos persistentes/obsessivos/intrusivos difíceis de se livrar?',
          onChanged: (bool? value) => print("Pensamentos persistentes/obsessivos/intrusivos: $value"),
        ),
      ],
    );
  }
}
