Rails.application.routes.draw do
  root 'logs#current'

  get 'logs/current'

  resources :logs, only: [:create, :index, :show, :new]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
