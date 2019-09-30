class LoginPage < SitePrism::Page

# MAPEAMENTO DE ELEMENTOS DO LOGIN

element :usuario_input, "input[id='login']"
element :senha_input, "input[id='senha']"
element :entrar_btn, "input[id='logar']"
element :uniforme_gerencial_link, "a[id*='uniformeGerencial']" 
element :menu_servidor_link, "a[href='/sigrh/servidor/portal/servidor.jsf']"


    def logar_sigrh_egp(usuario, senha)

        visit("/")

        @usuario = usuario
        @senha = senha
        
        puts "Logar como servidor: #{@usuario}"

        wait_until_usuario_input_visible
        usuario_input.set(@usuario)
        wait_until_senha_input_visible
        senha_input.set(@senha)
        wait_until_entrar_btn_visible
        entrar_btn.click  

        if(has_menu_servidor_link?(wait:5))
            click_link("Menu Servidor")
        end

    end


end