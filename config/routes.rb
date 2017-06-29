Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  devise_for :users, controllers:{
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }
  resources :users do
    resources :posts, only: [:index]
  end

  namespace :api, defaults: {foramt: :json} do
    namespace :v1 do
      post 'users/sign_in', to: 'sessions#create'
    end
  end
end
