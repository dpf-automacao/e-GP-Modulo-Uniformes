Quando("eu informo usuario {string} e senha {string} e clico para entrar no Menu Servidor") do |usuario, senha|

    @usuario = usuario
    @senha = senha
    @login_sigrh = LoginPage.new
    # @login_sigrh.logar_sigrh_egp(ENV['USUARIO'],ENV['SENHA'])
    @login_sigrh.logar_sigrh_egp("plinio.prpm", "plinio.prpm")

end

Entao("eu realizo um login com sucesso no SIGRH EGP") do



end
