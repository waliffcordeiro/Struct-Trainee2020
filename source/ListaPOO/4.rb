class Turma
  @@turmas = []
  
  def initialize(materia)
    @materia = materia
    @alunos = []
    for j in 0..rand(5..20)
      @alunos << {matricula: rand(170000000..200000000), nota: rand(0.0..10)}
    end
    @@turmas << self
  end

  attr_reader :materia, :alunos

  def qtdAprovados
    self.alunos.select{ |aluno| aluno[:nota] >= 5 }.count
  end

  def qtdAlunos
    self.alunos.count
  end

  def self.turmas
    @@turmas
  end
end

materias = [
  'Cálculo 1',
  'Cálculo 2',
  'Cálculo 3',
  'Física 1',
  'Física 2',
  'Estrutura de Dados',
  'Algoritmos e Programação de Computadores',
  'Técnicas de Programação 1',
  'Sistemas Digitais',
  'Eletromagnetismo'
]

print 'Insira o número de turmas desse semestre: '
quantidade = 0
loop do
  quantidade = gets.to_i
  break if quantidade >= 1 && quantidade <= 10
  print 'Quantidade inválida, insira um número entre 1 e 10: '
end

for i in 0..quantidade
  Turma.new(materias[rand(0..9)].to_sym)
end

resultado = {}
aprovados_total = 0
alunos_total = 0

for turma in Turma.turmas
  if resultado.key?(turma.materia)
    resultado[turma.materia][:aprovados] += turma.qtdAprovados
    resultado[turma.materia][:alunos] += turma.qtdAlunos
  else
    resultado[turma.materia] = {aprovados: turma.qtdAprovados, alunos: turma.qtdAlunos}
  end
  aprovados_total += turma.qtdAprovados
  alunos_total += turma.qtdAlunos
end

resultado[:Total] = {aprovados: aprovados_total, alunos: alunos_total}

puts resultado.map{ |materia, estats| "#{materia} ~> #{((estats[:aprovados].to_f / estats[:alunos]) * 100).round(2)}% aprovados" }
