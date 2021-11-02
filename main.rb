require_relative 'analisadorLinha'

arq = File.open("arq-test.txt")
linhasArq = arq.readlines.map(&:chomp)
arq.close

lista = []

linhasArq.each_with_index do |a,b|
    lista.push(analisadorLinha.new(b+1,a))
end

lista.each{
    |index| puts "Linha número #{index.numeroLinha} - Palavras: #{index.palavras.keys} | Frequencia: #{index.frequencia}"
}