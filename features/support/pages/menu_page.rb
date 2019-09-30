class MenuPage < SitePrism::Page 

    # MAPEAMENTO DE ELEMENTOS

    element :uniforme_gerencial_link, "a[id*='uniformeGerencial']"
    element :uniformes_link, "a[id*='DadosServidor:uniforme']"
    element :camp_prof_input, "input[id='campanhaProfessor']"
    element :basico_div, "div[id*='basico']"
    element :listagem_caption, "caption[class='listagem']"
    element :aba_professores_span, "span[title='Professores']"
    
    def entrar_uniforme_gerencial_menu
        click_link("Uniforme Gerencial")
    end

    def entrar_uniforme_operacional_menu
        wait_until_uniformes_link_visible
        click_link("Uniformes")
    end

    def cadastrar_campanha_menu
        click_link("Cadastrar")
    end

    def cadastrar_campanha_professores_menu
        camp_prof_input.check
    end

    def listar_alterar_campanha_operacional_menu 
        click_link("Listar/Alterar")
    end

    def aba_professores_menu
        aba_professores_span.click
    end

    def cadastrar_professor_menu
        click_link("Cadastrar Professor")
    end

    def cadastrar_anp_menu
        click_link("Cadastrador ANP")
    end

end