Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Homepage
  root :to => 'pages#home'

  # Static Pages
  get '/skills',      to: 'pages#skills',   as: 'skills'
  get '/work',        to: 'pages#work',     as: 'work'

  # Work Items
  get '/work/muh-invite-case-study',      to: 'work#muh_invite',  as: 'work_muh_invite'
  get '/work/freo-royale-animation',      to: 'work#anomaly',     as: 'work_anomaly'
  get '/work/bates-saddles',              to: 'work#bates',       as: 'work_bates'
  get '/work/twoofthree-animation',       to: 'work#glitched',    as: 'work_glitched'
  get '/work/izo-photography',            to: 'work#izo',         as: 'work_izo'
  get '/work/star-international',         to: 'work#star',        as: 'work_star'
  get '/work/wa-exclusive-meats',         to: 'work#wa_meats',    as: 'work_wa_meats'
  get '/work/wintec-saddles',             to: 'work#wintec',      as: 'work_wintec'

end
