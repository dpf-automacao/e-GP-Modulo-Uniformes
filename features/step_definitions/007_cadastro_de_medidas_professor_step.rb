Quando("eu entro no menu de Cadastrador ANP") do
    @menu = MenuPage.new
    @cad_anp = CadastroDeMedidasProfessor.new
    @menu.cadastrar_anp_menu
end

Quando("eu entro no menu de Uniforme Professores") do
    @menu = MenuPage.new
    @cad_anp = CadastroDeMedidasProfessor.new
    @menu.entrar_uniforme_professores_menu
end

Quando("informo Nome do Professor {string}, CPF {string}, Professor Servidor {string} e clico em Buscar") do |nome_professor, cpf_professor, professor_servidor|
    @cad_anp.preencher_nome_professor(nome_professor)
    @cad_anp.preencher_cpf_professor(cpf_professor)
    @cad_anp.selecionar_professor_servidor(professor_servidor)
    @cad_anp.buscar_professor
end

Entao("eu realizo a listagem do Professor com sucesso") do

end

Quando("clico para cadastrar as medidas para professor nao servidor") do
    @cad_anp.selecionar_professor
end

Quando("clico para cadastrar as medidas de professor para bone") do
    @cad_anp.cadastrar_medidas_bone
    @cad_anp.salvar_item
    @cad_anp.concluir_item
    @cad_anp.voltar_item
end

Quando("clico para cadastrar as medidas de professor para bota") do
    @cad_anp.cadastrar_medidas_bota
    @cad_anp.salvar_item
    @cad_anp.concluir_item
    @cad_anp.voltar_item
end

Quando("clico para cadastrar as medidas de professor para camiseta operacional") do
    @cad_anp.cadastrar_camiseta_op
    @cad_anp.salvar_item
    @cad_anp.concluir_item
    @cad_anp.voltar_item
end

Quando("clico para cadastrar as medidas de professor para calca operacional") do
    @cad_anp.cadastrar_calca
    @cad_anp.salvar_item
    @cad_anp.concluir_item
    @cad_anp.voltar_item
end

Quando("clico para cadastrar as medidas de professor para cinto tatico") do
    @cad_anp.cadastrar_cinto
    @cad_anp.salvar_item
    @cad_anp.concluir_item
    @cad_anp.voltar_item
end

Quando("clico para cadastrar as medidas de professor para Combat Shirt") do
    @cad_anp.cadastrar_combat_shirt
    @cad_anp.salvar_item
    @cad_anp.concluir_item
    @cad_anp.voltar_item
end

Entao("eu realizo o cadastro de medidas para professores nao servidores com sucesso") do

end

Entao("eu realizo o cadastro de medidas para professores servidores com sucesso") do
    
end