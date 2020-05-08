class SearchResultPage < SitePrism::Page

    element :page_title, '[class="page-result-header-inner"]'
    element :signatures, '[data-type-button="assinaturas"]'
    element :packages, '[data-type-button="pacotes"]'
    element :courses, '[data-type-button="cursos"]'
    element :result, '[class="found"]'  
    
end