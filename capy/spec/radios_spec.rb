
describe 'Botões de Rádio', :radio do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'Seleção por ID' do
        choose('cap')
    end

    it 'Seleção por Finde' do
    
        find('input[value=guardians]').click

    end

    after(:each) do
        sleep(3)
    end

end