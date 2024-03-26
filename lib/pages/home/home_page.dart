import 'package:flutter/material.dart';

import '../../widgets/app_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: _Body()),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [_PatientInfo(), SizedBox(height: 12.0), _ItemsCheckBoxes()],
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
        PsicoInput(
          labelText: "Data",
          hintText: "Escolha data...",
          onChanged: (p0) => {},
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
        Text("Assinale, a seguir, os itens que se aplicam a você (presente e passado):"),
      ],
    );
  }
}
