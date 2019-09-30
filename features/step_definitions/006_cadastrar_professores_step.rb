Quando("clico para Cadastrar Professor") do                                   

    @menu = MenuPage.new
    @menu.aba_professores_menu
    @menu.cadastrar_professor_menu

end                                                                           
                                                                              
Quando("seleciono Servidor Ativo") do                                         

    @cad_prof = CadastrarProfessoresPage.new
    @cad_prof.cadastrar_professor_servidor

end        

Quando("seleciono Servidor Nao") do

    @cad_prof = CadastrarProfessoresPage.new
    @cad_prof.cadastrar_professor_nao_servidor

end
                                                                              
Quando("informo Nome do Professor e clico para Buscar e clico em Salvar") do  


    
end                                                                           
                                                                              
Entao("eu realizo o cadastro de Professor com sucesso") do                    



end                                                                           