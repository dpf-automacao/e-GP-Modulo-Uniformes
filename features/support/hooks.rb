# Executando metodo para tirar foto depois de cada cenario

Before do |scenario|

  file_name = scenario.name.tr(' ', '-').downcase!

  puts "Cenario #{file_name} sendo executado"

end


After do |scenario|

  file_name = scenario.name.tr(' ', '-').downcase!
  shot = "logs/shots/#{file_name}.png"
  page.save_screenshot(shot)
  embed(shot, 'image/png', 'Clique aqui para ver o print da tela')

  puts "Cenario #{file_name} foi finalizado"

end

