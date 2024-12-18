Rails.application.routes.draw do
  get "users/index"
  get "recommendation/index"
  resources :authors
  resources :profiles

  namespace :api, format: "json" do
    namespace :v1 do
      resources :posts, only: [:index, :show]
    end
  end
  


  devise_for :users
  get "about_us/index"
  get "main/index"
  get "promo/index"
  get 'recommendation', to: 'recommendation#index'

  resources :users
  get 'my_profile', to: 'users#profile', as: :my_profile

  resources :subscriptions, only: [:create]
  resources :podcasts do 
    resources :issues 
    get 'issues', to: 'issues#issues_for_podcast', as: 'issues_for'
  end
  
  resources :issue do 
    resources :posts 
  end

  resources :posts do
    member do
      get "like"
    end
    resources :comments do
      member do
        get "like"
      end
    end
  end
  resources :tags  
  
  namespace :admin do
  resources :podcasts do 
    resources :issues 
    get 'issues', to: 'issues#issues_for_podcast', as: 'issues_for'
  end
  namespace :admin do
    resources :posts do
      resources :comments, only: [:new, :create, :edit, :update, :destroy]
    end
  end  
  resources :authors
  resources :subscriptions
  resources :issue do 
    resources :posts 
  end

  resources :posts do
    resources :comments
  end
  resources :tags  
end


  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "main#index"
end
