class HomePage < SitePrism::Page

    element :page_title, '[title="Página Inicial"]'
    element :cancel_alert, '#onesignal-popover-cancel-button'
    element :search_field, '[name="q"]', match: :first
    element :search, '[class="icon-find"]', match: :first
    
end