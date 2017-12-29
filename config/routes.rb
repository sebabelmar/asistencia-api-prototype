Rails.application.routes.draw do

  concern :user_auth do
    post 'users', to: 'users#create'
    post 'authenticate', to: 'authentication#authenticate'
  end

  concern :base_urls do
    resources :teachers do
      resources :attendances, only: [:index, :show]
    end

    resources :schools do
      resources :attendances, only: [:index, :show]
    end

    resources :children do
      resources :attendances
    end
  end

  namespace :v1 do
    concerns :base_urls
    concerns :user_auth
  end

  concerns :base_urls
  concerns :user_auth
end
