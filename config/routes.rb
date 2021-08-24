Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home', as: :home
  get '/about' => 'pages#about', as: :about
  resources :sleep
  post 'sleeps' => 'pages#create'
  resources :signups
  get '/new' => 'signups#new', as: :sign
  post 'signups' => 'signups#create'
  get '/thanks' => 'pages#thanks', as: :thanks
  resources :gallery
  get '/gallery' => 'gallery#index'
  get '/gallery/:id' => 'gallery#show'
end
