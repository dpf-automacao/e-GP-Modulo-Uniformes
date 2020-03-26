class CadastrarCampanhaProfessoresPage < SitePrism::Page

    # MAPEAMENTO DE ELEMENTOS DO VESTUARIO PARA CADASTRODE CAMPANHA

    element :bone_check, "input[id='form:bn']"
    element :bota_check, "input[id='form:bt']"
    element :camiseta_check, "input[id='form:cm']"
    element :combat_check, "input[id='form:cs']"
    element :calca_check, "input[id='form:cl']"
    element :cinto_check, "input[id='form:ct']"

    # MAPEAMENTO DE ELEMENTOS DE INFORMACOES PARA CADASTRO DE CAMPANHA

    element :assunto_input, "input[name='assunto']"
    element :data_inicial_input, "input[id*='dtInicial']"
    element :data_final_input, "input[id*='dtFinal']"
    element :salvar_btn, "input[value='Salvar']"

    def preencher_data_campanha_professores(data_inicial, data_final)
        data_inicial_input.click.set(data_inicial)
        data_final_input.click.set(data_final)
    end

    def preencher_assunto
        @nr_aleatorio = rand(1..10000)
        @assunto = "CAMPANHA PROFESSORES GERADO POR TESTE AUTOMATIZADO DE NUMERO #{@nr_aleatorio}"
        assunto_input.click.set(@assunto)
    end

    def selecionar_vestuario_professores
        bone_check.check
        bota_check.check
        camiseta_check.check
        combat_check.check
        calca_check.check
        cinto_check.check
    end

    def salvar_campanha
        sleep(1)
        salvar_btn.click
    end

end