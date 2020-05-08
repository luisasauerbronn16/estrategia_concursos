#DADO

Dado("que estou na home da Estratégia Concursos") do
    Capybara.reset_sessions!
    visit $url
    homePage.cancel_alert.click
    expect(homePage).to have_page_title
end

#E

E("realizo uma busca com o filtro {string}") do |filter|
    homePage.click_link(filter)
end

E("clico no curso {string}") do |course|
    @course = course
    expect(teacherCoursePage.page_title.text).to eql @teacher_name

    element = homePage.find_link(@course)
    element2 = element.ancestor('[class="card-prod || js-card-prod"]')
    text = element2.find('[class="card-prod-price"]').text
    @price = text[24..]
    element.click
end

E("realizo uma busca por {string}") do |text|
    homePage.search_field.send_keys(text)
    homePage.search.click
end

E("seleciono o curso {string}") do |course|
    @course = course
    searchResultPage.courses.click

    element = searchResultPage.find_link(@course)
    element2 = element.ancestor('[class="card-prod"]')
    text = element2.find('[class="card-prod-price"]').text
    @price = text[7..]
    element.click
end

#QUANDO
Quando("clico no professor {string}") do |teacher|
    expect(teachersListPage.page_title.text).to eql "Cursos por professor"
    @teacher_name = teacher
    homePage.click_link(@teacher_name)
end

Quando("vejo as assinaturas, pacotes e cursos disponíveis para compra") do
    expect(searchResultPage.page_title.text[0,18]).to eql "Resultado da busca"
    expect(searchResultPage).to have_signatures
    expect(searchResultPage).to have_packages
    expect(searchResultPage).to have_courses
end

#ENTAO

Então("vejo os detalhes do curso selecionado") do
    expect(coursePage.page_title.text).to eql @course
    expect(coursePage).to have_info
    expect(((coursePage.installments.text)[13..])).to eql @price

    text = (coursePage.value.text)[3..]
    expect(text.gsub(',', '.').to_f).to eql (@price.gsub(',', '.').to_f * 12).round.to_f
end

Então("vejo a mensagem {string}") do |msg|
    expect(searchResultPage.result.text).to eql msg
end