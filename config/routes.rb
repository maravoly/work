Rails.application.routes.draw do
  get 'readers/new'
  get 'readers/create'
  get '/works', to: 'works#index'
  get '/home' , to: 'pages#home'
  devise_for :users
root 'pages#home'
  resources :works do
    resources :chapters
    resources :readers, only: [:new, :create]
  end
end
