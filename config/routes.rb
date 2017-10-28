Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers, :pokemons
  patch 'capture', to: 'pokemons#capture'
  patch 'damage', to: 'pokemons#damage'
  get 'new', to: 'pokemons#new'
  patch 'heal', to: 'pokemons#heal'

end
