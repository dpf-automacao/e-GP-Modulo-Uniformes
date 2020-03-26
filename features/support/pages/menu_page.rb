class MenuPage < SitePrism::Page 

    # MAPEAMENTO DE ELEMENTOS

    element :uniforme_gerencial_link, "a[id*='uniformeGerencial']"
    element :uniformes_link, "a[id*='DadosServidor:uniforme']"
    element :uniformes_professor_link, "a[onclick*='campanhaDeProfessor']"
    element :camp_prof_input, "input[id='campanhaProfessor']"
    element :uniforme_gerencial_form, "form[id='form'][action='/sigrh/proforme/gerencial/inicioProFormeGerencial.jsf']"
    element :aba_professores_span, "span[title='Professores']"
    element :aba_professores_div, "div[id='professores']"
    element :tela_de_cad_medidas_professor_div, "div[id='cadastrarUniformes']"
    
    def entrar_uniforme_gerencial_menu
        sleep(0.5)
        click_link("Uniforme Gerencial")
    end

    def entrar_uniforme_operacional_menu
        wait_until_uniformes_link_visible
        sleep(0.5)
        click_link("Uniformes")
    end

    def cadastrar_campanha_menu
        wait_until_uniforme_gerencial_form_visible
        sleep(0.5)
        click_link("Cadastrar")
    end

    def cadastrar_campanha_professores_menu
        wait_until_camp_prof_input_visible
        sleep(0.5)
        camp_prof_input.check
    end

    def listar_alterar_campanha_operacional_menu 
        sleep(0.5)
        click_link("Listar/Alterar")
    end

    def aba_professores_menu
        sleep(0.5)
        aba_professores_span.click
    end

    def cadastrar_professor_menu
        wait_until_aba_professores_div_visible
        sleep(0.5)
        click_link("Cadastrar Professor")
    end

    def cadastrar_anp_menu
        sleep(0.5)
        click_link("Unif. Cadastrador ANP")
        sleep(0.5)
    end

    def entrar_uniforme_professores_menu
        wait_until_uniformes_professor_link_visible
        click_link("Uniforme Professores")
    end

end