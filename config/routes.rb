Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :bloggers, only: [:show, :create, :new]
  resources :posts, only: [:show, :create, :new]

  patch '/like/:id', to: 'posts#like', as: 'like'
end