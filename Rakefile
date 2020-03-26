@usuarios = File.readlines("usuarios.rb")

task :executa_cenario, [:feature] do |_task, args|

  sh "bundle exec cucumber -t @#{args[:feature]}"
  puts "Execução do usuario (#{args[:feature]}) finalizada!\n"

end

# Cria uma task para cada usuario da lista '@usuarios' 
def tasks_dinamicas(usuarios, qtn_usuarios)

  usuarios.take(qtn_usuarios.to_i).each do |usuario|
    usuario.chomp!

    task "#{usuario}" do
      sh "rake executa_cenario[cadastro_todas_medidas_operacional_sucesso] USUARIO='#{usuario}' SENHA='#{usuario}'"
    end

  end

end

# armazenando em uma lista as tasks criadas para cada cenario
@cenarios = tasks_dinamicas(@usuarios, ENV['USERS'])

# Criando a multtask para executar em paralelo as tasks existentes na lista
# Execução paralela:
# rake -m execucao_paralela --jobs 10 USERS=10
multitask execucao_paralela: @cenarios