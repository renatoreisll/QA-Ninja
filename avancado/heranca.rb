class Veiculo

    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} está pronto para iniciar o trajeto."
    end

    def buzinar
        puts 'Beep Beep!'
    end

end


class Carro < Veiculo

    def dirigir
        puts "#{nome} iniciando o trajeto."
    end

end

class Moto < Veiculo

    def pilotar
        puts "#{nome} iniciando o trajeto."
    end

end

civic = Carro.new('Civic', 'Honda', 'SI')
puts civic.ligar
puts civic.buzinar
puts civic.dirigir

lancer = Carro.new('Lancer', 'Mitsubishi', 'EVO')
puts lancer.ligar
puts lancer.buzinar
puts lancer.dirigir

fazer = Moto.new('Fazer', 'Yahama', '250x')
puts fazer.ligar
puts fazer.buzinar
puts fazer.pilotar