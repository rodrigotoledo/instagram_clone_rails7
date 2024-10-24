Rails.application.routes.draw do
  resource :registrations, only: %i[create new]
  resource :session
  resources :passwords, param: :token
  resources :profiles, only: [ :show ] do
    collection do
      post :search
    end
  end
  resources :following_users, only: :create
  resources :posts do
    resources :post_comments
    member do
      get :like
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
