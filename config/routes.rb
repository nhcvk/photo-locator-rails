Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login', to: "login#login"

  resources :photos, only: [:index, :show, :create, :update, :destroy], defaults: { format: JSON }
  resources :users, only: [:show] do
    resources :bookmarks, only: [:index]
  end
  resources :bookmarks, only: [:create, :destroy]

end


# /id
# user/bookmarks /id ---< go to /id
# /photos/:id/ show
# /user/id/bookmark/
