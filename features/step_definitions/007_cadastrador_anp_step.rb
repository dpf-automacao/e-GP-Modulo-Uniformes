Quando("eu entro no menu de Cadastrador ANP") do
    @menu = MenuPage.new
    @menu.cadastrar_anp_menu
end

Quando("informo Nome do Professor e CPF e clico em Buscar") do
    @cad_anp = CadastradorAnpPage.new
    @cad_anp.consultar_professor
end

Entao("eu realizo a listagem do Professor com sucesso") do


end

Quando("clico para cadastrar as medidas") do

    @cad_anp.cadastrar_medidas

end