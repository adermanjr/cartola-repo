Rails.application.routes.draw do
  resources :pontuacaos
  resources :rodadas
  resources :cartoleiros
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'rodadas#index'
end
