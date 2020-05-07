Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      resources :bodies
      resources :icons
      resources :boards
      resources :users
      post '/auth', to: "auth#create"
      get '/current_user', to: 'auth#show'
      post '/board_icons', to: 'icons#icons_for_board'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
