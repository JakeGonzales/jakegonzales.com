Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Homepage
  root :to => 'pages#home'

  # Static Pages
  get '/skills', to: 'pages#skills', as: 'skills'
  get '/work', to: 'pages#work', as: 'work'

  # Work Items
  get '/work/muh-invite-case-study', to: 'work#muh_invite', as: 'muh_invite'
  get '/work/freo-royale-animation', to: 'work#anomaly', as: 'anomaly'
  get '/work/bates-saddles', to: 'work#bates', as: 'bates'
  get '/work/twoofthree-animation', to: 'work#glitched', as: 'glitched'
  get '/work/izo-photography', to: 'work#izo', as: 'izo'
  get '/work/star-international', to: 'work#star', as: 'star'
  get '/work/wa-exclusive-meats', to: 'work#wa_meats', as: 'wa_meats'
  get '/work/wintec-saddles', to: 'work#wintec', as: 'wintec'

end
