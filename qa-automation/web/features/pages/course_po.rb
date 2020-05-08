class CoursePage < SitePrism::Page

    element :page_title, '[class="cur-details-info-title"]'
    element :info, '[class="cur-content"]'
    element :value, '[class="value"]'
    element :installments, '[class="cur-details-shopping-installments"]'
    
end