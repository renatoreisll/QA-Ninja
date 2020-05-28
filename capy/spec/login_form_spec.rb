describe "Login Form"  do

    it 'Login com sucesso' do
        visit '/login'

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

    it 'Senha incorreta' do

        visit '/login'

        fill_in 'userId', with: 'stark'
        fill_in 'password', with: '102030'

        click_button 'Login'

        expect(find('#flash')).to have_content 'Senha é invalida!'

    end

    it 'Usuário não cadastrado', :usuario do

        visit '/login'

        fill_in 'userId', with: 'asdasd'
        fill_in 'password', with: '123123'

        click_button 'Login'

        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'

    end

end