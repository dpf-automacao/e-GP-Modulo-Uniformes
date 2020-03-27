Quando("clico em Uniformes Operacional") do
    
    @menu = MenuPage.new
    @menu.entrar_uniforme_operacional_menu
    @uniforme_op = CadastrarMedidasServidorOperacionalPage.new
end

Quando("informo as medidas para bone e salvo e concluo") do
    sleep(1)
    @uniforme_op.cadastrar_medidas_bone
    @uniforme_op.salvar_item(@usuario, "bone_operacional")
    @uniforme_op.concluir_item(@usuario, "bone_operacional")
    @uniforme_op.voltar_item
end

Quando("informo as medidas para bota operacional e salvo e concluo") do
    sleep(1)
    @uniforme_op.cadastrar_medidas_bota
    @uniforme_op.salvar_item(@usuario, "bota_operacional")
    @uniforme_op.concluir_item(@usuario, "bota_operacional")
    @uniforme_op.voltar_item
end

Quando("informo as medidas para camiseta operacional e salvo e concluo") do
    sleep(1)
    @uniforme_op.cadastrar_camiseta_op
    @uniforme_op.salvar_item(@usuario, "camiseta_operacional")
    @uniforme_op.concluir_item(@usuario, "camiseta_operacional")
    @uniforme_op.voltar_item
end

Quando("informo as medidas para calca e salvo e concluo") do
    sleep(1)
    @uniforme_op.cadastrar_calca
    @uniforme_op.salvar_item(@usuario, "calca_operacional")
    @uniforme_op.concluir_item(@usuario, "calca_operacional")
    @uniforme_op.voltar_item
end

Quando("informo as medidas para cinto e salvo e concluo") do
    sleep(1)
    @uniforme_op.cadastrar_cinto
    @uniforme_op.salvar_item(@usuario, "cinto_operacional")
    @uniforme_op.concluir_item(@usuario, "cinto_operacional")
    @uniforme_op.voltar_item
end

Quando("informo as medidas para combat shirt e salvo e concluo") do
    sleep(1)
    @uniforme_op.cadastrar_combat_shirt
    @uniforme_op.salvar_item(@usuario, "combat_shirt_operacional")
    @uniforme_op.concluir_item(@usuario, "combat_shirt_operacional")
    @uniforme_op.voltar_item
end

Quando("informo as medidas para colete e salvo e concluo") do
    sleep(1)
    @uniforme_op.cadastrar_colete
    @uniforme_op.salvar_item(@usuario, "colete_operacional")
    @uniforme_op.concluir_item(@usuario, "colete_operacional")
    @uniforme_op.voltar_item
end

Quando("informo as medidas para coldre e salvo e concluo") do
    sleep(1)
    @uniforme_op.cadastrar_coldre
    @uniforme_op.salvar_item(@usuario, "coldre_operacional")
    @uniforme_op.concluir_item(@usuario, "coldre_operacional")
    @uniforme_op.voltar_item
end

Quando("informo as medidas para gola polo e salvo e concluo") do
    sleep(1)
    @uniforme_op.cadastrar_gola_polo
    @uniforme_op.salvar_item(@usuario, "gola_polo_operacional")
    @uniforme_op.concluir_item(@usuario, "gola_polo_operacional")
    @uniforme_op.voltar_item
end

Entao("eu realizo o cadastro das medidas respectivas com sucesso") do
  

end