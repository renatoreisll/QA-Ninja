
describe 'Upload', :upload do

    before(:each) do
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/imagem.jpg'
        visit '/upload'
    end

    it 'Upload com o arquivo texto' do
    
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'

    end

    it 'Upload de imagem' do

        attach_file('file-upload', @imagem)
        click_button 'Upload'

        img = find('#new-image')
        expect(img[:src]).to include 'imagem.jpg'

    end


    after(:each) do
    sleep(3)
    end

end