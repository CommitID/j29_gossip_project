Rails.application.routes.draw do
  get 'incription/index'
  get 'incription/show'
  get 'incription/new'
  get 'incription/create'
  get 'incription/update'
  get 'incription/edit'
  get 'incription/destroy'
  get '/team', to: 'team#index'
  get '/contact', to: 'contact#index'
  get '/welcome/:name', to: 'welcome#print'
  get '/', to: 'gossips#index'

  resources :gossips do
    resources :comments, only: [:new, :create, :edit, :update, :index, :destroy]
  end
  resources :users
  resources :cities
end


