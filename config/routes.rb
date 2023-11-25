Rails.application.routes.draw do
  get 'dogs/index'
  get 'signup', to: 'users#new'
  resources :users, except: [:new] do
    collection do
      post :preview
    end
  end
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'
  get 'dogs', to: 'dogs#index', as: 'dogs'
  root 'sessions#new'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
