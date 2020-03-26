class CadastrarProfessoresPage < SitePrism::Page

    element :servidor_input, "input[id='ehServidor'][value='1']"
    element :nao_e_servidor_input, "input[id='ehServidor'][value='0']"
    element :nome_professor_servidor_input, "input[id*='nomeServidor']"
    element :nome_professor_nao_servidor_input, "input[name*='nomeProfessor']"
    element :cpf_professor_nao_servidor_input, "input[id*='cpf']"
    element :email_professor_nao_servidor_input, "input[id='emailProfessor']"
    element :tel_celular_nao_servidor_input, "input[name='celular']"
    element :tel_residencial_nao_servidor_input, "input[name='foneResidencial']"
    element :sugestao_load, "td[class*='suggestionSelectValue']"
    element :buscar_button, "input[value='Buscar']"
    element :salvar_button, "input[value='Salvar']"

    def selecionar_professor_servidor
        servidor_input.click
    end

    def selecionar_professor_nao_servidor
        nao_e_servidor_input.click
    end 

    def preencher_nome_prof_servidor(nome_professor_servidor) 

        nome_professor_servidor_input.click.set(nome_professor_servidor)
        wait_until_sugestao_load_visible
        nome_professor_servidor_input.send_keys(:enter)
    end

    def preencher_nome_prof_nao_servidor(nome_professor_nao_servidor)
        @randon = rand(0..100000)
        @nome_professor_nao_servidor = nome_professor_nao_servidor
        @nome_professor_nao_servidor = "#{@nome_professor_nao_servidor}_#{@randon}"
        nome_professor_nao_servidor_input.click.set(@nome_professor_nao_servidor)

    end

    def preencher_cpf_nao_servidor(cpf_professor_nao_servidor)
        cpf_professor_nao_servidor_input.click.set(cpf_professor_nao_servidor)
    end

    def preencher_email_nao_servidor(email_professor_nao_servidor)
        email_professor_nao_servidor_input.click.set(email_professor_nao_servidor)
    end

    def preencher_tel_celular_nao_servidor(cel_professor_nao_servidor)
        tel_celular_nao_servidor_input.click.set(cel_professor_nao_servidor)
    end

    def preencher_tel_residencial_nao_servidor(tel_res_professor_nao_servidor)
        tel_residencial_nao_servidor_input.click.set(tel_res_professor_nao_servidor)
    end

    def buscar_professor
        buscar_button.click
    end

    def salvar_professor
        salvar_button.click
    end

end