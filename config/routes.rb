Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Homepage
  root :to => 'pages#home'

  # Static Pages
  get '/skills', to: 'pages#skills', as: 'skills'
  get '/work', to: 'pages#work', as: 'work'

end
