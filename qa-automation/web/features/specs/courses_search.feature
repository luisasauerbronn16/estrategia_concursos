#language: pt

@courses_search
Funcionalidade: Busca, filtragem e visualização de detalhe de cursos
    Sendo um usuário interessado em cursos disponíveis pela Estratégia Concursos
    Quero realizar buscas por cursos, concursos, professores, matérias e regiões
    Para visualizar os detalhes dos cursos disponíveis

    @test
    Cenário: Buscar curso válido
        Dado que estou na home da Estratégia Concursos
        E realizo uma busca por 'policia militar'
        Quando vejo as assinaturas, pacotes e cursos disponíveis para compra
        E seleciono o curso 'Legislação da Polícia Militar p/ PM-PI (Oficial) - 2020'
        Então vejo os detalhes do curso selecionado
        
    @test
    Cenário: Buscar curso inválido
        Dado que estou na home da Estratégia Concursos
        E realizo uma busca por 'culinária'
        Então vejo a mensagem 'Encontramos 0 resultados pela busca "culinária"'

    Cenário: Buscar curso em branco
        Dado que estou na home da Estratégia Concursos
        Quando realizo a busca por ''
        Então vejo o alerta "Este campo é obrigatório"

    Cenário: Realizar busca de curso filtrado por concurso
        Dado que estou na home da Estratégia Concursos
        E realizo uma busca com o filtro 'Por Concurso'
        Quando clico no concurso 'Agência Nacional do Cinema (Ancine)'
        E seleciono o curso 'Direito Civil p/ ANCINE (Analista) Com videoaulas - 2020'
        Então vejo os detalhes do curso selecionado

    @test
    Cenário: Realizar busca de curso filtrado por professor
        Dado que estou na home da Estratégia Concursos
        E realizo uma busca com o filtro 'Por professor'
        Quando clico no professor 'Ena Loiola'
        E clico no curso 'Inglês p/ CBM-SE (Oficial) Com Videoaulas - 2020'
        Então vejo os detalhes do curso selecionado

    Cenário: Realizar busca de curso filtrado por matéria
        Dado que estou na home da Estratégia Concursos
        E realizo uma busca com o filtro 'Por Matéria'
        Quando clico na matéria 'Agrônomia'
        E seleciono o curso 'Agronomia/Engenharia Agronômica p/ Concursos - Curso Regular (Com Videoaulas) 2020'
        Então vejo os detalhes do curso selecionado

    Cenário: Realizar busca de curso filtrado por região
        Dado que estou na home da Estratégia Concursos
        E realizo uma busca com o filtro 'Por Região'
        Quando clico na região 'São Paulo'
        E seleciono o concurso 'Polícia Federal - Agente'
        E seleciono o curso 'Direito Processual Penal p/ Polícia Federal (Agente) - 2020 - Pré-Edital (Preparação de A a Z)'
        Então vejo os detalhes do curso selecionado

    Cenário: Realizar busca de curso filtrado por todos os cursos
        Dado que estou na home da Estratégia Concursos
        E realizo uma busca com o filtro 'Ver Todos'
        Quando seleciono a matéria 'abuso de autoridade'
        E seleciono o curso 'Lei nº. 13.869/19 – Abuso de Autoridade p/ Câmara de Goiana-PE (Advogado) - Pós-Edital'
        Então vejo os detalhes do curso selecionado