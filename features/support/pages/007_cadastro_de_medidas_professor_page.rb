class CadastroDeMedidasProfessor < SitePrism::Page

    element :nome_professor_input, "input[name='nomeProfessor']"
    element :cpf_professor_input, "input[id='cpf']"
    element :professor_servidor_radio, "input[id='ehServidor'][value='1']"
    element :professor_nao_servidor_radio, "input[id='ehServidor'][value='0']"
    element :buscar_professor_button, "input[value='Buscar']"
    elements :medida_professor_img, "img[title='Editar']"
    element :salvar_item_input, "input[value='Salvar']"
    element :concluir_item_input, "input[value='Concluir Item']"
    element :voltar_item_input, "input[value='Voltar']"
    

    # MAPEAMENTO DE ELEMENTOS PARA BONE

    element :bone_op_img, "img[src*='bone.jpg']"

    element :circuferencia_cabeca_input, "input[id='cabeca']"

    # MAPEAMENTO DE ELEMENTOS PARA BOTA

    element :bota_op_img, "img[src*='bota']"

    element :numero_sapato_input, "input[id='nrbota']"
    element :medida_pe_direito_input, "input[id='peDireito']"
    element :medida_pe_esquerdo_input, "input[id='peEsquerdo']"

    # MAPEAMENTO DE ELEMENTOS CAMISETA OP

    element :camiseta_op_img, "img[src='/sigrh/proforme/medidas_professores/instrutorCaqui.jpg']"

    element :costas_camiseta_input, "input[id='costas']"
    element :peito_camiseta_op_input, "input[id='peito']"
    element :abdomen_camiseta_op_input, "input[id='abdomen']"
    element :altura_camiseta_op_input, "input[id='alturaCamiseta']"
    element :tipo_sanguineo_select, "select[id*='tipoSangueCamiseta']"
    element :nome_de_guerra_input, "input[id='nomeDeGuerra']"

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

    #MAPEAMENTO DE ELEMENTOS PARA PROFESSORES CONCLUIDOS

    element :bone_concluido_img, "img[src*='boneConcluido.jpg']"
    element :bota_concluido_img, "img[src*='botaConcluida']"
    element :camiseta_concluido_img, "img[src*='camisetaConcluido']"
    element :calca_concluido_img, "img[src*='calcaConcluido']"
    element :cinto_concluido_img, "img[src='/sigrh/proforme/medidas/cintoConcluido.jpg']"
    element :cb_concluido_img, "img[src*='combatProfessoresConcluido']"

    def preencher_nome_professor(nome_professor)
        sleep(1)
        nome_professor_input.click.set(nome_professor)
    end

    def preencher_cpf_professor(cpf_professor)
        sleep(1)
        cpf_professor_input.click.set(cpf_professor)
    end

    def selecionar_professor_servidor(professor_servidor)

        sleep(1)

        if(professor_servidor == "Sim")
            professor_servidor_radio.click
        else
            professor_nao_servidor_radio.click
        end
    end

    def buscar_professor
        sleep(1)
        buscar_professor_button.click
    end

    def selecionar_professor
        sleep(1)
        medida_professor_img[0].click
    end
    
    def cadastrar_medidas_bone

        sleep(1)

        if(has_bone_concluido_img?(wait:1))
            puts "Bone ja se encontra concluido"
        else
            puts "Cadastrando Bone"
            # MEDIDAS DE CIRCUFERENCIA CABECA DE 53 A 64
            @circuferencia_cabeca = rand(53..64)

            bone_op_img.click

            sleep(1)

            circuferencia_cabeca_input.click.set(@circuferencia_cabeca)
        end

    end

    
    def cadastrar_medidas_bota

        sleep(1)

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

            sleep(1)

            numero_sapato_input.click.set(@numero_sapato)
            medida_pe_direito_input.click.set(@medida_pe_direito)
            medida_pe_esquerdo_input.click.set(@medida_pe_esquerdo)

        end

    end

    def cadastrar_camiseta_op

        sleep(1)

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

            sleep(1)

            costas_camiseta_input.click.set(@costas)
            peito_camiseta_op_input.click.set(@peito)
            abdomen_camiseta_op_input.click.set(@abdomen)
            altura_camiseta_op_input.click.set(@altura_camiseta)
            tipo_sanguineo_select.select("O-")
            nome_de_guerra_input.click.set("Nome Guerra")

        end

    end

    
    def cadastrar_calca

        sleep(1)

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

            sleep(1)

            cintura_habilitada_input.click.set(@cintura)
            pernas_calca_lateral_input.click.set(@pernas_lateral)
            pernas_calca_interno_input.click.set(@pernas_interno)
            quadril_calca_input.click.set(@quadril)
            gancho_calca_input.click.set(@gancho)
            numero_calca_input.click.set(@numero_calca)

        end

    end

    
    def cadastrar_cinto

        sleep(1)

        if(has_cinto_concluido_img?(wait:1))
            puts "Cinto ja se encontra concluido"
        else
            puts "Cadastrando Cinto"
            # MEDIDAS CINTURA DE 63 A 152
            @cintura_cinto = rand(63..152)

            cinto_op_img.click

            sleep(1)

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

            sleep(1)

            if(has_altura_cb_desabilitado_input?(wait:3))
                puts "Altura Combat Shirt Desabilitada"
            else
                altura_cb_input.click.set(@altura_cb)
            end

            if(has_peito_cb_desabilitado_input?(wait:3))
                puts "Peito Combat Shirt Desabilitada"
            else
                peito_cb_input.click.set(@peito_cb)
            end

            if(has_abdomen_cb_desabilitado_input?(wait:3))
                puts "Abdomen Combat Shirt Desabilitada"
            else
                abdomen_cb_input.click.set(@abdomen_cb)
            end

            sleep(1)
            
            manga_cb_input.click.set(@manga_cb)
            punho_cb_input.click.set(@punho_cb)

        end

    end

    def salvar_item
        sleep(1)
        salvar_item_input.click
        sleep(1)
    end

    def concluir_item
        sleep(1)
        concluir_item_input.click
        sleep(1)
    end

    def voltar_item
        sleep(1)
        voltar_item_input.click
        sleep(1)
    end


end