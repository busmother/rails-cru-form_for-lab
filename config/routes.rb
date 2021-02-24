Rails.application.routes.draw do
  get 'genres/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, :genres, :songs, only: [:new, :create, :edit, :update, :show]

end
