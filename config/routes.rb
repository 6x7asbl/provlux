Rails.application.routes.draw do
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :interests, only: [:index, :show]

  resources :categories, only: :index do
    resources :interests, only: [:index, :show]
  end


  match '/commerces/', to: 'pages#businesses', via: :get, as: :businesses
  match '/commerces/', to: 'pages#tourism', via: :get, as: :tourism
  match '/commerces/', to: 'pages#agenda', via: :get, as: :agenda
  match '/commerces/', to: 'pages#news', via: :get, as: :news

end
