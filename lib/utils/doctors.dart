class Doctor {
  final String nome;
  final String especialidade;
  final String foto;
  final String desc;
  const Doctor({
    required this.nome,
    required this.especialidade,
    required this.foto,
    required this.desc,
  });
  
}
List<Doctor> doctors = [
    const Doctor(
      nome: 'Anna',
      especialidade: 'Oftalmologista',
      foto: 'images/Anna.jpg',
      desc: 'Formada em Havard, com milhares de anos de experiência, sua paixão pela Oftalmologia se mmostrou desde pequena... faz tempo!'
    ),
    const Doctor(
      nome: 'Carlos',
      especialidade: 'Dermatologista',
      foto: 'images/Carlos.jpg',
      desc: 'Formado em Oxford, com poucos de anos de experiência, sua paixão pela Dermatologia se mostrou desde que recebeu seu primeiro salário... faz pouco tempo!'
    ),
    const Doctor(
      nome: 'George',
      especialidade: 'Cardiologista',
      foto: 'images/George.jpg',
      desc: 'Formado em Stanford, com um ano de experiência, sua paixão pela Cardiologia se mostrou desde que descobriu que passou no Enem!'
    ),
    const Doctor(
      nome: 'Jessica',
      especialidade: 'Pediatria',
      foto: 'images/Jessica.jpg',
      desc: 'Formada na UBA, com três anos de experiência, sua paixão pela Pediatria se mostrou desde que se entende por gente, essa é top!'
    ),
    const Doctor(
      nome: 'Joao',
      especialidade: 'Obstetrícista',
      foto: 'images/Joao.jpg',
      desc: 'Formado em Princeton com seis anos de experiência, sua paixão pela Obstetrícia se mostrou desde que nasceu '
    ),
    const Doctor(
      nome: 'Joelma',
      especialidade: 'Ginecologia',
      foto: 'images/Joelma.jpg',
      desc: 'Formada em aqui mesmo Brasil, com duas semanas de experiência, sua paixão pela Ginecologia... é paixão'
    ),
    const Doctor(
      nome: 'Lara',
      especialidade: 'Cirurgia Geral',
      foto: 'images/Lara.jpg',
      desc: 'Formada por correspondência, com quatro anos de experiência milagre, responde a quatro processos que saibamos até agora'
    ),
    const Doctor(
      nome: 'Marta',
      especialidade: 'Clinica Geral',
      foto: 'images/Marta.jpg',
      desc: 'Formada na melhor do mundo, com 6 meses de experiêcia se prova uma prodigio durante todo o curso, melhor da turma, hj melhor do hospital'
    ),
  ];
