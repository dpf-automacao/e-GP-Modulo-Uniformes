Quando("clico na Aba Professores e clico para Cadastrar Professor") do        
    @menu = MenuPage.new
    @cad_professor = CadastrarProfessoresPage.new
    @menu.aba_professores_menu
    @menu.cadastrar_professor_menu
end                                                                           
                                                                            
Quando("seleciono Professor Servidor") do                                     
    @cad_professor.selecionar_professor_servidor
end                                                                           
                                                                            
Quando("informo Nome do Professor {string} e clico para Buscar") do |nome_professor|  
    @cad_professor.preencher_nome_prof_servidor(nome_professor)
    @cad_professor.buscar_professor
end                                                                           

Quando("clico para Salvar Professor Servidor") do 
    @cad_professor.salvar_professor
end

Quando("seleciono Professor Nao Servidor") do
    @cad_professor.selecionar_professor_nao_servidor
end

Quando("informo Nome do Professor {string} e CPF {string}") do |nome_professor_nao_servidor, cpf_professor_nao_servidor|
    @cad_professor.preencher_nome_prof_nao_servidor(nome_professor_nao_servidor)
    @cad_professor.preencher_cpf_nao_servidor(cpf_professor_nao_servidor)
end

Quando("informo Email {string} e Tel-Celular {string}") do |email_professor, tel_celular|
    @cad_professor.preencher_email_nao_servidor(email_professor)
    @cad_professor.preencher_tel_celular_nao_servidor(tel_celular)
end

Quando("informo Tel-Residencial {string} e clico para Salvar") do |tel_res_professor_nao_servidor|
    @cad_professor.preencher_tel_residencial_nao_servidor(tel_res_professor_nao_servidor)
    @cad_professor.salvar_professor
end

Entao("eu realizo o cadastro de um professor servidor com sucesso") do

end