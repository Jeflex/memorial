Rails.application.routes.draw do
  resources :posts
  resources :users
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.
  get 'welcome/index'
  root 'welcome#index'

  get '/about', to:"welcome#about"
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  get '/option', to:"welcome#admin"
end
