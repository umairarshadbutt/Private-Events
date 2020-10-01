Rails.application.routes.draw do
  root 'sessions#welcome'
  resources :users, only: [:new, :create, :show]
  resources :events do
    post 'attend', on: :member
  end
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/welcome' => 'sessions#welcome'
end
