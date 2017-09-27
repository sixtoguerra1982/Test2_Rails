Rails.application.routes.draw do
  get 'tasks/create'

  devise_for :users
  resources :home, only: [:index]
  
  resources :histories, only: :index do
  	resources :tasks, only: [:create]
  end
  
  post '/historie/:histories_id' => 'tasks#desmarcar',
    as: :task_desmarcar

  root to:'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
