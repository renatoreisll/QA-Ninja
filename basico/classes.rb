#  Ruby é uma linguagem considerada puramente orientada a objetos..
#  Porque no Ruby tudo são objetos..

#  Classe = possui atributos e métodos..
#  Características e ações

#  Classe: Carro (Nome, Marca, Modelo, Cor, Quantidade de Portas, etc..)
#  Métodos: Ligar, buzinar, parar etc...

class Carro

    attr_accessor :nome

    def Ligar
        puts 'O carro está pronto para iniciar o trajeto.'
    end

end


C4 = Carro.new
C4.nome = 'Citroen C4'

puts C4.nome

C4.Ligar