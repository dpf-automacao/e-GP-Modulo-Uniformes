#language: pt

Funcionalidade: Realizar o cadastro de campanha para professores

@cadastro_campanha_professores
Cenario: Cadastro de campanha de professores com sucesso
    Quando eu entro em Uniforme Gerencial
    E clico para Cadastrar Campanha Professores
    E seleciono os itens de Vestuario para Campanha de Professores
    E informo o Assunto e Unidades que irao participar na campanha de Professores
    E informo Data Inicial "26/09/2019" e Data Final "27/09/2019" e clico para Salvar a campanha de professores
    Entao eu realizo um cadastro de campanha de professoes com sucesso