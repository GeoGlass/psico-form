import 'package:flutter/material.dart';
import 'package:psico_form/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PsicoForm", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: const SafeArea(
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: ListView(
        padding: const EdgeInsets.all(24.0),
        children: const [
          _PatientInfo(),
          SizedBox(height: 12.0),
          _ItemsCheckBoxes(),
          SizedBox(height: 12.0),
          _MedicationsCurrentlyTaking(),
          SizedBox(height: 12.0),
          _PacientHistory(),
        ],
      ),
    );
  }
}

class _PatientInfo extends StatelessWidget {
  const _PatientInfo();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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

class _ItemsCheckBoxes extends StatelessWidget {
  const _ItemsCheckBoxes();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Assinale, a seguir, os itens que se aplicam a você (presente e passado):",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Wrap(
          direction: Axis.horizontal,
          children: <Widget>[
            PsicoCheckbox(
              value: true,
              label: 'Epilepsia',
              onChanged: (bool? value) => print("Epilepsia: $value"),
            ),
            PsicoCheckbox(
              value: true,
              label: 'Dores nos olhos/problemas visuais',
              onChanged: (bool? value) => print("Dores/Problemas Visuais: $value"),
            ),
            PsicoCheckbox(
              value: true,
              label: 'Uso de anfetaminas',
              onChanged: (bool? value) => print("Anfetaminas: $value"),
            ),
            PsicoCheckbox(
              value: true,
              label: 'Dores de ouvido/perda de audição',
              onChanged: (bool? value) => print("Dores ouvido: $value"),
            ),
            PsicoCheckbox(
              value: true,
              label: 'Danos cerebrais',
              onChanged: (bool? value) => print("Danos cerebrais: $value"),
            ),
            PsicoCheckbox(
              value: true,
              label: 'Uso de cocaína',
              onChanged: (bool? value) => print("Uso cocaína: $value"),
            ),
            PsicoCheckbox(
              value: true,
              label: 'Problemas cardíacos',
              onChanged: (bool? value) => print("Prob cardíacos: $value"),
            ),
            PsicoCheckbox(
              value: true,
              label: 'Problemas neurológicos',
              onChanged: (bool? value) => print("Prob cardíacos: $value"),
            ),
            PsicoCheckbox(
              value: true,
              label: 'Uso de benzodiazepínicos (Diazepam, Valium, etc...)',
              onChanged: (bool? value) => print("Prob cardíacos: $value"),
            ),
          ],
        ),
      ],
    );
  }
}

class _MedicationsCurrentlyTaking extends StatelessWidget {
  const _MedicationsCurrentlyTaking();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PsicoInput(
          labelText: "Relacione os medicamentos que você está tomando atualmente:",
          hintText: "Escreva aqui...",
          onChanged: (p0) => {},
        ),
        const SizedBox(height: 12.0),
        Wrap(
          direction: Axis.horizontal,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            const Text("Se você é mulher, você está grávida?"),
            PsicoCheckbox(
              value: true,
              label: 'Sim',
              onChanged: (bool? value) => print("Grávida Sim: $value"),
            ),
            PsicoCheckbox(
              value: true,
              label: 'Não',
              onChanged: (bool? value) => print("Grávida Não: $value"),
            ),
          ],
        ),
        const SizedBox(height: 12.0),
        PsicoInput(
          labelText: "Caso afirmativo, quantos meses?",
          hintText: "Escreva aqui...",
          onChanged: (p0) => {},
        ),
      ],
    );
  }
}

class _PacientHistory extends StatelessWidget {
  const _PacientHistory();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Você possui histórico de:",
          style: Theme.of(context).textTheme.bodyLarge?.apply(fontWeightDelta: 1),
        ),
      ],
    );
  }
}
