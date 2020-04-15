describe "Forms"  do

    it 'Login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        ## Preenchendo formulário de login e senha usando o ID do elemento
        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: 'jarvis!'

        ##Clicando no botão
        click_button 'Login'
        sleep(3)

        #Adicionando condição pra verificar se o campo de Boas Vindas está visível
        expect(find('#flash').visible?).to be true

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        
    end

end