class Doctor {
  final String nome;
  final String especialidade;
  final String foto;
  const Doctor({
    required this.nome,
    required this.especialidade,
    required this.foto,
  });
  
}
List<Doctor> doctors = [
    const Doctor(
      nome: 'Anna',
      especialidade: 'Oftalmologista',
      foto: 'images/Anna.jpg',
    ),
    const Doctor(
      nome: 'Carlos',
      especialidade: 'Dermatologista',
      foto: 'images/Carlos.jpg',
    ),
    const Doctor(
      nome: 'George',
      especialidade: 'Cardiologista',
      foto: 'images/George.jpg',
    ),
    const Doctor(
      nome: 'Jessica',
      especialidade: 'Pediatria',
      foto: 'images/Jessica.jpg',
    ),
    const Doctor(
      nome: 'Joao',
      especialidade: 'Obstetrícista',
      foto: 'images/Joao.jpg',
    ),
    const Doctor(
      nome: 'Joelma',
      especialidade: 'Ginecologia',
      foto: 'images/Joelma.jpg',
    ),
    const Doctor(
      nome: 'Lara',
      especialidade: 'Cirurgia Geral',
      foto: 'images/Lara.jpg',
    ),
    const Doctor(
      nome: 'Marta',
      especialidade: 'Clinica Geral',
      foto: 'images/Marta.jpg',
    ),
  ];
