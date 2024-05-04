import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psico_form/widgets/widgets.dart';
import 'package:psico_form/pages/home/psico_form_provider.dart';

class PatientInfo extends StatelessWidget {
  const PatientInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PsicoFormProvider>(
      builder: (context, provider, _) => Column(
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
            onChanged: (String name) => provider.setPacienteNome(name),
          ),
          const SizedBox(height: 12.0),
          Row(
            children: [
              Expanded(
                flex: 8,
                child: PsicoInput(
                  labelText: "Data",
                  hintText: "Escolha data...",
                  onChanged: (String date) => provider.setData(date),
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
            onChanged: (String items) => provider.setTerapiaItens(items),
          ),
        ],
      ),
    );
  }
}
