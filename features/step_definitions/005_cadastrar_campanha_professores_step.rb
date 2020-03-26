Quando("clico para Cadastrar Campanha Professores") do                                                                          
    @cad_camp_prof = CadastrarCampanhaProfessoresPage.new
    @menu = MenuPage.new
    @menu.cadastrar_campanha_menu
    @menu.cadastrar_campanha_professores_menu
end                                                                                                                             
                                                                                                                                
Quando("seleciono os itens de Vestuario para Campanha de Professores") do                                                       
    @cad_camp_prof.selecionar_vestuario_professores
end                                                                                                                             
                                                                                                                                
Quando("informo o Assunto da Campanha de Professores") do                                        
    @cad_camp_prof.preencher_assunto
end                                                                                                                             
                                                                                                                                
Quando("informo Data Inicial {string} e Data Final {string} e clico para Salvar a campanha de professores") do |data_inicial, data_final|
    @cad_camp_prof.preencher_data_campanha_professores(data_inicial, data_final)
    @cad_camp_prof.salvar_campanha
end                                                                                                                             
                                                                                                                                
Entao("eu realizo um cadastro de campanha de professoes com sucesso") do                                                        

end                                                                                                                             