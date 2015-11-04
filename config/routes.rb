Rails.application.routes.draw do

  mount RedactorRails::Engine => '/redactor_rails'
  root to: 'visitors#index'
  devise_for :users
  resources :interests, only: [:index, :show]

  scope '(/cities/:city)' do
    resources :categories, only: :index do
      resources :interests, only: [:index, :show]
    end
  end


  match '/businesses/', to: 'pages#businesses', via: :get, as: :businesses
  match '/tourism/',    to: 'pages#tourism',    via: :get, as: :tourism
  match '/agenda/',     to: 'pages#agenda',     via: :get, as: :agenda

  resources :posts, only: [:index, :show]

  namespace :admin do
    resources :posts
  end

end
