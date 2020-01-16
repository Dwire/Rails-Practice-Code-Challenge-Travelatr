Rails.application.routes.draw do
  # get 'bloggers/show', to: 'bloggers#show', as: 'blogger'

  resources :bloggers, only: [:show]
  resources :posts, only: [:show, :new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  

end
