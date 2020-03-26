#language: pt

Funcionalidade: Realizar Funcionalidades para Cadastrador ANP

@listagem_professor
Cenario: Realizar Listagem de Professores com Sucesso
    Quando eu informo usuario "plinio.prpm" e senha "plinio.prpm" e clico para entrar no Menu Servidor
    E eu entro no menu de Cadastrador ANP
    E informo Nome do Professor "Professor Automated", CPF "", Professor Servidor "Nao" e clico em Buscar
    Entao eu realizo a listagem do Professor com sucesso

@cadastro_medidas_professor_nao_servidor
Cenario: Cadastrar Medidas Professores Nao Servidores com Sucesso
    Quando eu informo usuario "plinio.prpm" e senha "plinio.prpm" e clico para entrar no Menu Servidor
    E eu entro no menu de Cadastrador ANP
    E informo Nome do Professor "PROFESSOR", CPF "", Professor Servidor "Nao" e clico em Buscar
    E clico para cadastrar as medidas para professor nao servidor
    E clico para cadastrar as medidas de professor para bone
    E clico para cadastrar as medidas de professor para bota
    E clico para cadastrar as medidas de professor para camiseta operacional
    E clico para cadastrar as medidas de professor para calca operacional
    E clico para cadastrar as medidas de professor para cinto tatico
    E clico para cadastrar as medidas de professor para Combat Shirt
    Entao eu realizo o cadastro de medidas para professores nao servidores com sucesso

@cadastro_medidas_professor_servidor
Cenario: Cadastrar Medidas Professores Servidores com Sucesso
    Quando eu informo usuario "jairo.jbs" e senha "jairo.jbs" e clico para entrar no Menu Servidor
    E eu entro no menu de Uniforme Professores
    E clico para cadastrar as medidas de professor para bone
    E clico para cadastrar as medidas de professor para bota
    E clico para cadastrar as medidas de professor para camiseta operacional
    E clico para cadastrar as medidas de professor para calca operacional
    E clico para cadastrar as medidas de professor para cinto tatico
    E clico para cadastrar as medidas de professor para Combat Shirt
    Entao eu realizo o cadastro de medidas para professores servidores com sucesso

