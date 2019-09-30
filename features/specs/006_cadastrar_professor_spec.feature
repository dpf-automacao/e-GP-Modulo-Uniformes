#language:pt

Funcionalidade: Realizar o Cadastro de Professor para Campanha Prof

@cadastro_professor_servidor
Cenario: Realizar cadastro de professor servidor ativo com sucesso
    Quando eu entro em Uniforme Gerencial
    E clico para Cadastrar Professor
    E seleciono Servidor Ativo  
    E informo Nome do Professor e clico para Buscar e clico em Salvar
    Entao eu realizo o cadastro de Professor com sucesso

@cadastro_professor_nao_servidor
Cenario: Realizar cadastro de professor nao servidor com sucesso
    Quando eu entro em Uniforme Gerencial
    E clico para Cadastrar Professor
    E seleciono Servidor Nao
    E informo Nome do Professor e clico para Buscar e clico em Salvar
    Entao eu realizo o cadastro de Professor com sucesso


