Rails.application.routes.draw do
  get 'log/current'

  get 'log/history'

  get 'notes/current'

  get 'notes/history'

  get 'static_pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
