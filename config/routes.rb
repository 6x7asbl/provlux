Rails.application.routes.draw do
  mount Upmin::Engine => '/admin'
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
  match '/news/',       to: 'pages#news',       via: :get, as: :news

end
