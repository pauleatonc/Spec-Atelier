Rails.application.routes.draw do
  get 'user/show'
  resources :products
  resources :projects
  resources :states, only: :index
  resources :cities, only: :index

  get 'landing/index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "landing#index"

end
