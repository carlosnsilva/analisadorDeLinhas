class analisadorLinha
    attr_reader :numeroLinha, :palavras, :frequencia

    def initialize(numeroLinha,  content)
        @numeroLinha = numeroLinha
        @content = content
        @palavras = verifica(@content)
    end

    def verifica(content)
        palavras = {}
        frequenciaMaior = 0

        listaPalavras = content.split(" ").map {
            |index| index.downcase.gsub(/[\s,.]/,"")
        }

        listaPalavras.each do |index|
            
            #Verifica as ocorrências de cada palavra
            if palavras.include?(index)
                palavras[index] = palavras[index] + 1
            else
                palavras[index] = 1
            end 

            if palavras[index] > frequenciaMaior
                frequenciaMaior = palavra[index]
            end
        end
        @frequencia = frequenciaMaior

        palavras.select{
            |_, index| index == frequenciaMaior
        }
    end
end   
