Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # list route
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#details', as: 'task'
end
