import 'package:flutter/material.dart';
import 'package:psico_form/widgets/widgets.dart';

class PatientInfo extends StatelessWidget {
  const PatientInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Dados do paciente:",
          style: Theme.of(context).textTheme.bodyLarge?.apply(fontWeightDelta: 2),
        ),
        const SizedBox(height: 16.0),
        PsicoInput(
          labelText: "Nome do paciente",
          hintText: "Digite o nome do Paciente",
          onChanged: (p0) => {},
        ),
        const SizedBox(height: 12.0),
        Row(
          children: [
            Expanded(
              flex: 8,
              child: PsicoInput(
                labelText: "Data",
                hintText: "Escolha data...",
                onChanged: (p0) => {},
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              flex: 4,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Escolha Data'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12.0),
        PsicoInput(
          labelText: "Quais os items que lhe trazem à terapia?",
          hintText: "Escreva aqui...",
          onChanged: (p0) => {},
        ),
      ],
    );
  }
}
