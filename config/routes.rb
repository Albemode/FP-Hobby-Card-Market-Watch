Rails.application.routes.draw do
  resources :pricewalkthroughs
  resources :buddyfights
  resources :pokemons
  resources :dragonballs
  resources :vanguards
  resources :forceofwills
  resources :yugiohs
  resources :magics
  resources :products
  resources :home

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
