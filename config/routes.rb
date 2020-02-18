Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # list route
  get 'tasks', to: 'tasks#index'

  # Create a task. We need to direct to the view New
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  # Edit task, and patch / update
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  # show details based on task id
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
end
