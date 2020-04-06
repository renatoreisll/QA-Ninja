class AvengersHeadQuarter

    attr_accessor :lista

    def initialize
        self.lista = []
    end

    def put(avenger)
        self.lista.push(avenger)
    end


end

# -------- TDD  (Desenvolvimento guiado por Testes)
describe AvengersHeadQuarter do

    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.lista).to eql ['Spiderman']
    end

end