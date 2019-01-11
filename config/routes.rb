Rails.application.routes.draw do
  get 'specifications/show'
  resources :events
  resources :products do
    resources :specifications, only: :create
  end

  resources :projects do
    member do
      post 'status_opened', to: 'projects#status_opened'
      post 'status_closed', to: 'projects#status_closed'
    end
  end
  resources :states, only: :index
  resources :cities, only: :index

  get 'landing/index'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  get 'user/show'
  resources :users, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "landing#index"

end
