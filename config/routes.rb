Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  # get '/equipweapon' => 'sessions#equip_weapon'
  # post '/equipweapon/:character_id' => 'sessions#weapon'
  # get '/equipshield' => 'sessions#equip_shield'
  # post '/equipshield/:character_id' => 'sessions#shield'

  get '/equipweapon' => 'characters#equip_weapon'
  post '/equipweapon/:character_id' => 'characters#weapon'
  get '/equipshield' => 'characters#equip_shield'
  post '/equipshield/:character_id' => 'characters#shield'

  get '/instructions' => 'welcome#howtoplay'
  
  resources :users
  resources :characters
  resources :enemies

  # patch '/characters/:id/edit', to:"characters#edit", as: "edit"

  root 'welcome#home'
end
