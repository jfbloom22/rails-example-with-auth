Rails.application.routes.draw do
  get 'signup-temp', to: 'temp_users#new'
  resources :temp_users, except: [:new] do
    collection do
      post :preview
    end
  end
  get 'signup', to: 'users#new'
  resources :users, except: [:new] do
    collection do
      post :preview
    end
  end
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'
  get 'dashboard', to: 'dashboard#index', as: 'dashboard'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
