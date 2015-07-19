Rails.application.routes.draw do
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :interests, only: [:index, :show]

  resources :categories, only: :index do
    resources :interests, only: :index
  end

end
