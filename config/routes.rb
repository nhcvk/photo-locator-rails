Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :photos, only: [:index, :show, :new, :create] 
  # post '/login', to "login#login"

end
