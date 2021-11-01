Rails.application.routes.draw do
  get 'home/index'
  get 'photoshoot/new'
  post 'photoshoot/create'
  get 'photoshoot/index'
  get 'photoshoot/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
