import 'package:flutter/foundation.dart';

class PsicoFormProvider with ChangeNotifier {
  //PATIENT INFO
  String _pacienteNome = '';
  String _data = '';
  String _terapiaItens = '';

  void setPacienteNome(String name) {
    _pacienteNome = name;
  }

  void setData(String date) {
    _data = date;
  }

  void setTerapiaItens(String items) {
    _terapiaItens = items;
  }

  //PATIENT ITEMS
  bool _hasEpilepsia = false;
  bool _hasProbVisuais = false;
  bool _hasAnfetaminas = false;
  bool _hasPerdaAudicao = false;
  bool _hasDanosCerebrais = false;
  bool _hasCocaina = false;
  bool _hasCardiaco = false;
  bool _hasNeurologicos = false;
  bool _hasBenzodiazepinicos = false;

  void setEplepsia(bool val) {
    _hasEpilepsia = val;
  }

  void setProbVisuais(bool val) {
    _hasProbVisuais = val;
  }

  void setAnfetaminas(bool val) {
    _hasAnfetaminas = val;
  }

  void setPerdaAudicao(bool val) {
    _hasPerdaAudicao = val;
  }

  void setDanosCerebrais(bool val) {
    _hasDanosCerebrais = val;
  }

  void setCocaina(bool val) {
    _hasCocaina = val;
  }

  void setCardiaco(bool val) {
    _hasCardiaco = val;
  }

  void setNeurologicos(bool val) {
    _hasNeurologicos = val;
  }

  void setBenzodiazepinicos(bool val) {
    _hasBenzodiazepinicos = val;
  }

  //PATIENT MEDICINES
  String _medicamentos = '';
  bool _isGravida = false;
  String _mesesGravidez = '';

  void setMedicamentos(String med) {
    _medicamentos = med;
  }

  void setGravida(bool val) {
    _isGravida = val;
  }

  void setMesesGravidez(String meses) {
    _mesesGravidez = meses;
  }

  //PATIENT HISTORY
  bool _hasSuicidio = false;

  void reset() {
    _pacienteNome = '';
  }

  void submitBtn() {
    Map<String, dynamic> _mapValues = {
      "patient_info": {
        "nome": _pacienteNome,
        "data": _data,
        "terapia_itens": _terapiaItens,
      },
      "patient_items": {
        "epilepsia": _hasEpilepsia,
        "prob_visuais": _hasProbVisuais,
        "anfetaminas": _hasAnfetaminas,
        "perda_audicao": _hasPerdaAudicao,
        "danos_cerebrais": _hasDanosCerebrais,
        "cocaina": _hasCocaina,
        "cardiaco": _hasCardiaco,
        "prob_neurologicos": _hasNeurologicos,
        "uso_benzodiazepinicos": _hasBenzodiazepinicos,
      },
      "patient_medicines": {
        "medicamentos": _medicamentos,
        "gravida": _isGravida,
        "meses_gravidez": _mesesGravidez,
      },
      "patient_history": {
        "tentativa_suicidio": _hasSuicidio,
      },
    };

    print(_mapValues);
  }
}
