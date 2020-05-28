describe 'IDs dinâmicos', :teste do

    before(:each) do
        visit '/access'
    end

    ## $ = termina com
    ## ^ = começa com
    ## * = contém

    it 'Cadastro' do
        find('input[id$=UsernameInput').set 'renato'
        find('input[id^=PasswordInput').set '123123'
        find('a[id*=GetStartedButton').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'

        sleep(3)

    end

end