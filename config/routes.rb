Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Static pages 
  get "/pages/:page" => "pages#show"

  # Homepage
  root "pages#show", page: "home"
end
