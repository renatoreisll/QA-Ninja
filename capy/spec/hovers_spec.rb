describe 'Mouse Hover', :hovers do

    before(:each) do
        visit '/hovers'
    end

    ## O Blade é pesquisado pelo elemento img alt...
    it 'Quando passo mouse sobre o Blade' do
        card = find('img[alt*=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'

    end

    ## Regex: permite buscar por seletores usando os comandos:
    ## * = contém
    ## ^ = começa com
    ## $ = termina com
    ## Obs.: não se usa as aspas.


    ## O Pantera Negra e o Spiderman foi necessário colocar entre aspas duplas para localizar em forma de string.
    it 'Quando passo mouse sobre o Pantera Negra' do
        card = find('img[alt^=Pantera]')
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'

    end

    it 'Quando passo mouse sobre o Homem Aranha' do
        card = find('img[alt$=Aranha]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'

    end

    after(:each) do

        sleep(0.5)

    end

end