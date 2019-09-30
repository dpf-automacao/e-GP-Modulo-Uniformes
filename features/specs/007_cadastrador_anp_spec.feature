#language: pt

Funcionalidade: Realizar Funcionalidades para Cadastrador ANP

@listagem_professor
Cenario: Realizar Listagem de Professores com Sucesso
    Quando eu informo usuario "plinio.prpm" e senha "plinio.prpm" e clico para entrar no Menu Servidor
    E eu entro no menu de Cadastrador ANP
    E informo Nome do Professor e CPF e clico em Buscar
    Entao eu realizo a listagem do Professor com sucesso

@cadastro_medidas_professor_nao_servidor
Cenario: Cadastrar Medidas Professores Nao Servidores com Sucesso
    Quando eu informo usuario "plinio.prpm" e senha "plinio.prpm" e clico para entrar no Menu Servidor
    E eu entro no menu de Cadastrador ANP
    E informo Nome do Professor e CPF e clico em Buscar
    E clico para cadastrar as medidas
