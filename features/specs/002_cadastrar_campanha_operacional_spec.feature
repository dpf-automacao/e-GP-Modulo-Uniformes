#language:pt

@all_fc_uniforme_gerencial

Funcionalidade: Uniforme Gerencial EGP

@cadastrar_campanha_operacional_todos_com_sucesso
Cenario: Cadastrar Campanha para Todos Operacional
    Quando eu entro em Uniforme Gerencial
    E clico para Cadastrar Campanha Operacional
    E seleciono os itens de Vestuario para Campanha
    E informo o Assunto e Unidades que irao participar 
    E informo Data Inicial "26/09/2019" e Data Final "30/09/2019" e clico para Salvar
    Entao eu realizo um cadastro de campanha com sucesso