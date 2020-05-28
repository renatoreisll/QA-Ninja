

describe 'Caixa de Seleção', :dropdown do

    it 'Item específico simples' do
        visit '/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3  #temporario

    end

    it 'Item específico com o find' do

        visit '/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3  #temporario

    end

    it 'Qualquer item', :sample do

            ## Sample: sorteio de um item...

        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3  #temporario

    end 
end