Rails.application.routes.draw do
  # resources :artists
  # resources :songs

  resources :artists do
    # nested resource for songs
    resources :songs, only: [:show, :index]
  end
 
  resources :songs
 
  root 'songs#index'

  
end
