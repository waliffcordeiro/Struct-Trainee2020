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
    # Retorna o número de elementos de um array que contém
    # só hashes cujos valores da chave nota são >= 5
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
qtdTurmas = 0

loop do
  qtdTurmas = gets.to_i
  break if qtdTurmas >= 1 && qtdTurmas <= 10
  print 'Quantidade inválida, insira um número entre 1 e 10: '
end

for i in 0..qtdTurmas
  Turma.new(materias[rand(0..9)].to_sym)
end

resultado = {}
aprovados_total = 0
alunos_total = 0

for turma in Turma.turmas
  # Se a chave da matéria já existir, soma os números
  if resultado.key?(turma.materia)
    resultado[turma.materia][:aprovados] += turma.qtdAprovados
    resultado[turma.materia][:alunos] += turma.qtdAlunos
  # Se a chave da matéria não existir, cria a estrutura e copia os números
  else
    resultado[turma.materia] = {aprovados: turma.qtdAprovados, alunos: turma.qtdAlunos}
  end
  aprovados_total += turma.qtdAprovados
  alunos_total += turma.qtdAlunos
end

# Cria a chave para a contagem total
resultado[:Total] = {aprovados: aprovados_total, alunos: alunos_total}

puts resultado.map{ |materia, estats| "#{materia} ~> #{((estats[:aprovados].to_f / estats[:alunos]) * 100).round(2)}% aprovados" }
