Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  # get '/equip' => 'characters#inventory'
  # patch '/equip' => 'characters#update'
  resources :users
  resources :characters
  resources :enemies

  # patch '/characters/:id/edit', to:"characters#edit", as: "edit"

  root 'welcome#home'
end
