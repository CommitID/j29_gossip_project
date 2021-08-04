Rails.application.routes.draw do
  get '/team', to: 'team#index'
  get '/contact', to: 'contact#index'
  get '/welcome/:name', to: 'welcome#print'
  get '/', to: 'gossips#index'

  resources :gossips
  resources :users
  resources :cities
end


