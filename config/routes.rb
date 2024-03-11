Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # routes for ui kit
  get '/ui_kit', to: 'pages#ui_kit'
  get 'onboarding', to: 'pages#onboarding'
  get '/dashboard', to: 'pages#dashboard'
  post '/connections', to: 'connections#create', as: 'connections'


  resources :mentees, only: [:new, :create, :show]
  resources :mentors, only: [:new, :create, :show, :index]

  resources :connections, only: [:show] do
    resources :tasks, only: [:index, :new, :create,:destroy,:show]
  end

  resources :tasks, only: [:edit, :update, ]

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :tasks do
    member do
      put 'mark_as_done', to: 'tasks#mark_as_done'
    end
  end
  #   resources :mentors, only: []
  #   resources :rejected, only: []
  # end
  # resources :connections, only: [] do
  #   resources :tasks, only: []
  # end
  # resources :chatrooms, only: [] do
  #   resources :messages, only: []
  # end
  # Defines the root path route ("/")
  # root "posts#index"

end
