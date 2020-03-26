class UniformeGerencialPage < SitePrism::Page

    # MAPEAMENTO DE ELEMENTOS DO VESTUARIO PARA CADASTRODE CAMPANHA

    element :bone_check, "input[id='form:bn']"
    element :bota_check, "input[id='form:bt']"
    element :camiseta_check, "input[id='form:cm']"
    element :combat_check, "input[id='form:cs']"
    element :gola_polo_check, "input[id='form:gp']"
    element :calca_check, "input[id='form:cl']"
    element :cinto_check, "input[id='form:ct']"
    element :colete_check, "input[id='form:clt']"
    element :coldre_check, "input[id='form:cd']"

    # MAPEAMENTO DE ELEMENTOS DE INFORMACOES PARA CADASTRO DE CAMPANHA

    element :assunto_input, "input[name='assunto']"
    element :unidades_input, "input[title='Unidade de Exercício']"
    element :sugestao_unidades, "td[class*='suggestionSelectValue']"
    element :todas_unidades_check, "input[id*='todasUnidades']"
    element :habilitar_cot_input_check, "input[id*='incluirCOT']"
    element :adicionar_unidades_link, "a[title='Adicionar Unidade']"
    element :data_inicial_input, "input[id*='dtInicial']"
    element :data_final_input, "input[id*='dtFinal']"
    element :salvar_btn, "input[value='Salvar']"


    # ----------------------------INICIO CADASTRO DE UNIFORMES

    def selecionar_itens_vestuario

        wait_until_bone_check_visible
        bone_check.check
        wait_until_bota_check_visible
        bota_check.check
        wait_until_camiseta_check_visible
        camiseta_check.check
        wait_until_combat_check_visible
        combat_check.check
        wait_until_gola_polo_check_visible
        gola_polo_check.check
        wait_until_calca_check_visible
        calca_check.check
        wait_until_cinto_check_visible
        cinto_check.check
        
        wait_until_colete_check_visible

        accept_alert do

            colete_check.click

        end

        wait_until_coldre_check_visible

        accept_alert do

            coldre_check.click

        end

    end

    def preencher_assunto

        @nr_aleatorio = rand(1..10000)

        @assunto = "CAMPANHA GERADA POR TESTE AUTOMATIZADO DE NUMERO #{@nr_aleatorio}"

        wait_until_assunto_input_visible
        assunto_input.click.set(@assunto)

    end

    def preencher_unidades(unidades)

        @unidade = unidades

        if(@unidade != "TODAS")
            wait_until_unidades_input_visible
            unidades_input.click.set(@unidade)
            wait_until_sugestao_unidades_visible
            unidades_input.send_keys(:enter)
            wait_until_adicionar_unidades_link_visible
            adicionar_unidades_link.click
        elsif(@unidade == "TODAS")
            wait_until_todas_unidades_check_visible
            todas_unidades_check.check
        end

    end

    def preencher_data

        @data_atual = Time.now
        # @data_inicial = @data_atual.strftime("%d/%m/%Y")
        @data_final = @data_atual.strftime("%d/%m/%Y")
        @data_inicial = "01/03/2020"
        #@data_final = "14/10/2019"

        wait_until_data_inicial_input_visible
        data_inicial_input.click.set(@data_inicial)

        wait_until_data_final_input_visible
        data_final_input.set(@data_final)

    end


    def salvar(usuario)

        sleep(1)
        wait_until_salvar_btn_visible

        shot = "logs/shots/cadastro_campanha_operacional/#{usuario}/#{usuario}_antes_de_salvar_campanha_operacional.png"
        page.save_screenshot(shot)
        salvar_btn.click

        shot = "logs/shots/cadastro_campanha_operacional/#{usuario}/#{usuario}_depois_de_salvar_campanha_operacional.png"
        page.save_screenshot(shot)
        
    end


    # -----------------------------FIM CADASTRO DE UNIFORMES

    # -----------------------------INICIO LISTAGEM DE UNIFORMES

    def listar_campanhas

        click_link("Listar/Alterar")

    end

end