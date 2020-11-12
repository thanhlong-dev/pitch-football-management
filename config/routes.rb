Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    get "/home", to: "static_pages#home"
    get "/detail", to: "static_pages#detail"
    get "/order", to: "static_pages#order"
  end
end