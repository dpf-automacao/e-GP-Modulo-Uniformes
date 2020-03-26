class CadastrarMedidasServidorOperacionalPage < SitePrism::Page

    # MAPEAMENTO DE ELEMENTOS PARA BONE

    element :bone_op_img, "img[src*='bone.jpg']"

    element :circuferencia_cabeca_input, "input[id='cabeca']"

    # MAPEAMENTO DE ELEMENTOS PARA BOTA

    element :bota_op_img, "img[src*='bota']"

    element :numero_sapato_input, "input[id='nrbota']"
    element :medida_pe_direito_input, "input[id='peDireito']"
    element :medida_pe_esquerdo_input, "input[id='peEsquerdo']"

    # MAPEAMENTO DE ELEMENTOS PARA CAMISETA OP

    element :camiseta_op_img, "img[src='/sigrh/proforme/medidas/camiseta.jpg']"

    element :costas_camiseta_input, "input[id='costas']"
    element :peito_camiseta_op_input, "input[id='peito']"
    element :abdomen_camiseta_op_input, "input[id='abdomen']"
    element :altura_camiseta_op_input, "input[id='alturaCamiseta']"
    
    #MAPEAMENTO DE ELEMENTOS PARA CALCA OP

    element :calca_op_img, "img[src*='calca']"

    element :cintura_habilitada_input, "[id='cintura']"
    element :cintura_desabilitada_input, "[id='cintura'][disabled='disabled']"
    element :pernas_calca_lateral_input, "input[id='pernasExterna']"
    element :pernas_calca_interno_input, "input[id='pernasInterna']"
    element :quadril_calca_input, "input[id='quadril']"
    element :gancho_calca_input, "input[id='gancho']"
    element :numero_calca_input, "input[id='numeroCalca']"

    #MAPEAMENTO DE ELEMENTOS PARA CINTO

    element :cinto_op_img, "img[src='/sigrh/proforme/medidas/cinto.jpg']"

    element :cinto_input, "input[id='cintura']"
    element :cinto_desabilitado_input, "input[id='cintura'][disabled='disabled']"

    #MAPEAMENTO DE ELEMENTOS PARA COMBAT SHIRT

    element :combat_shirt_img, "img[src*='combat']"

    element :altura_cb_input, "input[id='combatShirtAltura']"
    element :altura_cb_desabilitado_input, "input[id='combatShirtAltura'][disabled='disabled']"
    element :peito_cb_input, "input[id='peito']"
    element :peito_cb_desabilitado_input, "input[id='peito'][disabled='disabled']"
    element :abdomen_cb_input, "input[id='combatShirtAbdomen']"
    element :abdomen_cb_desabilitado_input, "input[id='combatShirtAbdomen'][disabled='disabled']"
    element :manga_cb_input, "input[id='manga']"
    element :punho_cb_input, "input[id='punho']"

    #MAPEAMENTO DE ELEMENTOS PARA COLETE

    element :colete_img, "img[src='/sigrh/proforme/medidas/colete.jpg']"

    element :peito_colete_input, "input[name='coletePeito']"
    element :abdomen_colete_input, "input[name='coleteAbdomen']"
    element :posicao_tiro_colete_input, "input[name='posicaoTiro']"
    element :comp_em_pe_colete_input, "input[name='compEmPe']"
    element :comp_lateral_em_pe_colete_input, "input[name='compLateralEmPe']"
    element :costas_colete_input, "input[name='coleteCostas']"
    element :sentado_colete_input, "input[name='sentado']"

    #MAPEAMENTO DE ELEMENTOS PARA COLDRE

    element :coldre_img, "img[src='/sigrh/proforme/medidas/coldre.jpg']"

    element :mao_dominante_select, "select[id='maoDominante']"

    #MAPEAMENTO DE ELEMENTOS PARA GOLA POLO

    element :gola_polo_img, "img[src='/sigrh/proforme/medidas/polo.png']"

    element :altura_gola_polo_input, "input[id='poloAltura']"
    element :altura_gola_desabilitada_polo_input, "input[id='poloAltura'][disabled='disabled']"
    element :peito_gola_polo_input, "input[id='peito']"
    element :peito_gola_desabilitada_polo_input, "input[id='poloPeito'][disabled='disabled']"
    element :abdomen_gola_polo_input, "input[id='poloAbdomen']"
    element :abdomen_gola_desabilitada_polo_input, "input[id='poloAbdomen'][disabled='disabled']"
    element :pescoco_gola_polo_input, "input[id='pescoco']"

    #MAPEAMENTO ELEMENTO GERAL
    element :salvar_item_input, "input[value='Salvar']"
    element :concluir_item_input, "input[value='Concluir Item']"
    element :voltar_item_input, "input[value='Voltar']"
    element :mensagem_sucesso_insucesso, "div[id='painel-erros']"


    #MAPEAMENTO ITENS CONCLUIDOS
    element :bone_concluido_img, "img[src='/sigrh/proforme/medidas/boneConcluido.jpg']"
    element :bota_concluido_img, "img[src='/sigrh/proforme/medidas/botaConcluida.jpg']"
    element :camiseta_concluido_img, "img[src*='camisetaConcluido']"
    element :calca_concluido_img, "img[src='/sigrh/proforme/medidas/calcaConcluida.jpg']"
    element :cinto_concluido_img, "img[src='/sigrh/proforme/medidas/cintoConcluido.jpg']"
    element :cb_concluido_img, "img[src='/sigrh/proforme/medidas/combatConcluido.jpg']"
    element :colete_concluido_img, "img[src='/sigrh/proforme/medidas/coleteConcluido.jpg']"
    element :coldre_concluido_img, "img[src='/sigrh/proforme/medidas/coldreConcluido.jpg']"
    element :gola_polo_concluido_img, "img[src='/sigrh/proforme/medidas/poloConcluido.png']"

    #MAPEMAMENTO DE MENSAGENS DE CONCLUSAO
    element :validacao_bota, "//li[text()='Bota cadastrada com sucesso']"

    def cadastrar_medidas_bone

        if(has_bone_concluido_img?(wait:1))
            puts "Bone ja se encontra concluido"
        else
            puts "Cadastrando Bone"
            # MEDIDAS DE CIRCUFERENCIA CABECA DE 53 A 64
            @circuferencia_cabeca = rand(53..64)

            bone_op_img.click

            circuferencia_cabeca_input.click.set(@circuferencia_cabeca)
        end

    end

    def cadastrar_medidas_bota

        if(has_bota_concluido_img?(wait:1))
            puts "Bota ja se encontra concluido"
        else
            puts "Cadastrando Bota"
            # MEDIDAS SAPATO DE 33 A 45
            @numero_sapato = rand(33..45)
            # MEDIDAS PE DIREITO DE 22 A 29
            @medida_pe_direito = rand(22..29)
            # MEDIDAS PE DIREITO DE 22 A 29
            @medida_pe_esquerdo = rand(22..29)

            bota_op_img.click

            sleep(0.3)
            numero_sapato_input.click.set(@numero_sapato)
            sleep(0.3)
            medida_pe_direito_input.click.set(@medida_pe_direito)
            sleep(0.3)
            medida_pe_esquerdo_input.click.set(@medida_pe_esquerdo)

        end

    end

    def cadastrar_camiseta_op

        if(has_camiseta_concluido_img?(wait:1))
            puts "Camiseta ja se encontra concluido"
        else
            puts "Cadastrando Camiseta"
            # MEDIDAS COSTAS DE 40 A 80
            @costas = rand(40..80)
            # MEDIDAS PEITO DE 70 A 160
            @peito = rand(70..160)
            # MEDIDAS COSTAS DE 63 A 160
            @abdomen = rand(63..160)
            # MEDIDAS COSTAS DE 62 A 89
            @altura_camiseta = rand(62..89)

            camiseta_op_img.click

            costas_camiseta_input.click.set(@costas)
            peito_camiseta_op_input.click.set(@peito)
            abdomen_camiseta_op_input.click.set(@abdomen)
            altura_camiseta_op_input.click.set(@altura_camiseta)

        end

    end

    def cadastrar_calca

        if(has_calca_concluido_img?(wait:1))
            puts "Calca ja se encontra concluido"
        else
            puts "Cadastrando Calca"
            # MEDIDAS CINTURA DE 63 A 152
            @cintura = rand(63..152)
            # MEDIDAS PERNAS LATERAL DE 95 A 117
            @pernas_lateral = rand(95..117)
            # MEDIDAS PERNAS INTERNO DE 68 A 86
            @pernas_interno = rand(68..86)
            # MEDIDAS QUADRIL DE 75 A 160
            @quadril = rand(75..160)
            # MEDIDAS GANCHO DE 24 A 42
            @gancho = rand(24..42)
            # MEDIDAS CALCA DE 34 A 180
            @numero_calca = rand(34..180)

            calca_op_img.click

            if(has_cintura_desabilitada_input?(wait:1))

            else
                cintura_habilitada_input.click.set(@cintura)
            end

            pernas_calca_lateral_input.click.set(@pernas_lateral)
            pernas_calca_interno_input.click.set(@pernas_interno)
            quadril_calca_input.click.set(@quadril)
            gancho_calca_input.click.set(@gancho)
            numero_calca_input.click.set(@numero_calca)

        end

    end

    def cadastrar_cinto

        if(has_cinto_concluido_img?(wait:1))
            puts "Cinto ja se encontra concluido"
        else
            puts "Cadastrando Cinto"
            # MEDIDAS CINTURA DE 63 A 152
            @cintura_cinto = rand(63..152)

            cinto_op_img.click

            if(has_cinto_desabilitado_input?(wait:3))
                puts "Cinto Desabilitado"
            else
                cinto_input.click.set(@cintura_cinto)
            end

        end

    end

    def cadastrar_combat_shirt

        if(has_cb_concluido_img?(wait:1))
            puts "Combat Shirt ja se encontra concluido"
        else
            puts "Cadastrando Combat Shirt"
            # MEDIDAS ALTURA COMBAT SHIRT DE 62 A 89
            @altura_cb = rand(62..89)
            # MEDIDAS PEITO DE 70 A 160
            @peito_cb = rand(70..160)
            # MEDIDAS ABDOMEN DE 63 A 160
            @abdomen_cb = rand(63..160)
            # MEDIDAS MANGA DE 66 A 92
            @manga_cb = rand(66..92)
            # MEDIDAS PUNHO DE 17 A 27
            @punho_cb = rand(17..27)

            combat_shirt_img.click

            if(has_altura_cb_desabilitado_input?(wait:1))
                puts "Altura Combat Shirt Desabilitada"
            else
                altura_cb_input.click.set(@altura_cb)
            end

            if(has_peito_cb_desabilitado_input?(wait:1))
                puts "Peito Combat Shirt Desabilitada"
            else
                peito_cb_input.click.set(@peito_cb)
            end

            if(has_abdomen_cb_desabilitado_input?(wait:1))
                puts "Abdomen Combat Shirt Desabilitada"
            else
                abdomen_cb_input.click.set(@abdomen_cb)
            end
            
            manga_cb_input.click.set(@manga_cb)
            punho_cb_input.click.set(@punho_cb)

        end

    end

    def cadastrar_colete

        if(has_colete_concluido_img?(wait:1))
            puts "Colete ja se encontra concluido"
        else
            puts "Cadastrando Colete"
            # MEDIDAS PUNHO DE 65 A 150
            @peito_colete = rand(65..150)
            # MEDIDAS PUNHO DE 63 A 160
            @abdomen_colete = rand(63..160)
            # MEDIDAS PUNHO DE 20 A 60
            @posicao_tiro_colete = rand(20..60)
            # MEDIDAS PUNHO DE 35 A 65
            @comp_em_pe_colete = rand(35..65)
            # MEDIDAS PUNHO DE 35 A 65
            @comp_lateral_em_pe_colete = rand(35..65)
            # MEDIDAS PUNHO DE 35 A 75
            @costas_colete = rand(35..75)
            # MEDIDAS PUNHO DE 30 A 55
            @sentado_colete = rand(30..55)

            colete_img.click

            peito_colete_input.click.set(@peito_colete)
            abdomen_colete_input.click.set(@abdomen_colete)
            posicao_tiro_colete_input.click.set(@posicao_tiro_colete)
            comp_em_pe_colete_input.click.set(@comp_em_pe_colete)
            comp_lateral_em_pe_colete_input.click.set(@comp_lateral_em_pe_colete)
            costas_colete_input.click.set(@costas_colete)
            sentado_colete_input.click.set(@sentado_colete)

        end

    end

    def cadastrar_coldre

        if(has_coldre_concluido_img?(wait:1))
            puts "Coldre ja se encontra concluido"
        else
            puts "Cadastrando Coldre"
            #Valores Esquerda e Direita
            @mao_dominante = rand(1..2)
            
            if(@mao_dominante == 1)
                @mao_dominante = "Esquerda"
            else
                @mao_dominante = "Direita"
            end

            coldre_img.click

            mao_dominante_select.select(@mao_dominante)

        end

    end

    
    def cadastrar_gola_polo

        if(has_gola_polo_concluido_img?(wait:1))
            puts "Gola Polo ja se encontra concluido"
        else
            puts "Cadastrando Gola Polo"
            # MEDIDAS PUNHO DE 62 A 89
            @altura_gola_polo = rand(62..89)
            # MEDIDAS PUNHO DE 70 A 160
            @peito_gola_polo = rand(70..160)
            # MEDIDAS PUNHO DE 63 A 160
            @abdomen_gola_polo = rand(63..160)
            # MEDIDAS PUNHO DE 33 A 55
            @pescoco_gola_polo = rand(33..55)

            gola_polo_img.click

            if(has_altura_gola_desabilitada_polo_input?(wait:1))
                puts "Altura Gola Polo Desabilitada"
            else
                altura_gola_polo_input.click.set(@altura_gola_polo)
            end

            if(has_peito_gola_desabilitada_polo_input?(wait:1))
                puts "Peito Gola Polo Desabilitada"
            else
                peito_gola_polo_input.click.set(@peito_gola_polo)
            end

            if(has_abdomen_gola_desabilitada_polo_input?(wait:1))
                puts "Abdomen Gola Polo Desabilitada"
            else
                abdomen_gola_polo_input.click.set(@abdomen_gola_polo)
            end

            pescoco_gola_polo_input.click.set(@pescoco_gola_polo)

        end

    end
    
    def salvar_item(usuario, item_operacional)
        sleep(1)
        if(has_salvar_item_input?(wait:1))
            puts "Salvando item"
            wait_until_salvar_item_input_visible
            salvar_item_input.click

            shot = "logs/shots/cadastro_medidas_operacional/#{usuario}/#{usuario}_salvar_#{item_operacional}.png"
            page.save_screenshot(shot)

        else
            puts "Botao Salvar não se encontra na pagina atual"
        end
        sleep(1)
    end

    def concluir_item(usuario, item_operacional)
        sleep(1)
        if(has_concluir_item_input?(wait:1))
            puts "Concluindo item"
            wait_until_concluir_item_input_visible
            accept_alert do
                concluir_item_input.click
            end

            shot = "logs/shots/cadastro_medidas_operacional/#{usuario}/#{usuario}_concluir_#{item_operacional}.png"
            page.save_screenshot(shot)

        else
            puts "Botao Concluir não se encontra na pagina atual"
        end
    end

    def voltar_item
        sleep(1)
        if(has_voltar_item_input?(wait:1))
            puts "Voltando tela inicial"
            wait_until_voltar_item_input_visible
            voltar_item_input.click
        else
            puts "Botao Voltar não se encontra na pagina atual"
        end
    end


end