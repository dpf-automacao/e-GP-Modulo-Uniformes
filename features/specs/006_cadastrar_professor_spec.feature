#language:pt

Funcionalidade: Realizar o Cadastro de Professor Servidor e Nao Servidor

@cadastro_professor_servidor
Cenario: Cadastro de professor servidor com sucesso
    Quando eu entro em Uniforme Gerencial
    E clico na Aba Professores e clico para Cadastrar Professor
    E seleciono Professor Servidor
    E informo Nome do Professor "ALEXANDRE JOSE POLLACHINI" e clico para Buscar
    E clico para Salvar Professor Servidor
    Entao eu realizo o cadastro de um professor servidor com sucesso

@cadastro_professor_nao_servidor
Cenario: Cadastro de professor servidor com sucesso
    Quando eu entro em Uniforme Gerencial
    E clico na Aba Professores e clico para Cadastrar Professor
    E seleciono Professor Nao Servidor
    E informo Nome do Professor "Professor Automated" e CPF "02978144432"
    E informo Email "alexandre@gmail.com" e Tel-Celular "619981523344"
    E informo Tel-Residencial "6133334444" e clico para Salvar
    Entao eu realizo o cadastro de um professor servidor com sucesso