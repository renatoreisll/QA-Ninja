

describe 'Alertas de Javascript', :alerts do

    before(:each) do
        visit '/javascript_alerts'
    end

    it 'alerta' do
        click_button 'Alerta'
        
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
        sleep(2)
    end

    it 'Sim confirma' do
    
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        sleep(1)
        msg = page.driver.browser.switch_to.alert.accept

        expect(page).to have_content 'Mensagem confirmada'

        ## ACCEPT = É como se clicasse em OK

    end

    it 'Sim não confirma' do
    
        click_button 'Confirma'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
        sleep(1)
        msg = page.driver.browser.switch_to.alert.dismiss

        expect(page).to have_content 'Mensagem não confirmada'

        ## DISMISS: É como se clicasse em CANCELAR

    end
    
    it 'Accept Prompt', :accept_prompt do

        accept_prompt(with: 'Renato') do
        click_button 'Prompt'
        sleep(2)
        end

        expect(page).to have_content 'Olá, Renato'
        sleep(3)

    end

    it 'Dismiss Prompt', :dismiss do
        accept_prompt(with: 'null') do
        click_button 'Prompt'
        sleep(2)
            end

        expect(page).to have_content 'Olá, null'
        sleep(3)

    end

end