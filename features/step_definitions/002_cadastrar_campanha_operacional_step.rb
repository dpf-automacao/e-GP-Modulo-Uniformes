Quando("eu entro em Uniforme Gerencial") do
    @login_sigrh_egp = LoginPage.new
    @usuario = "plinio.prpm"
    @login_sigrh_egp.logar_sigrh_egp(@usuario, @usuario)
    @menu = MenuPage.new
    @uniforme_gerencial = UniformeGerencialPage.new
    @menu.entrar_uniforme_gerencial_menu
end

Quando("clico para Cadastrar Campanha Operacional") do
    @menu.cadastrar_campanha_menu
end

Quando("seleciono os itens de Vestuario para Campanha") do
    @uniforme_gerencial.selecionar_itens_vestuario
end

Quando("informo o Assunto e Unidades que irao participar") do
    @uniforme_gerencial.preencher_assunto
    @uniforme_gerencial.preencher_unidades("TODAS")
end

Quando("informo Data Inicial e Data Final clico para Salvar") do
    @uniforme_gerencial.preencher_data
    @uniforme_gerencial.salvar(@usuario)
end

Entao("eu realizo um cadastro de campanha com sucesso") do
    
end