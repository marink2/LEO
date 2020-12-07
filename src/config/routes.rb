Rails.application.routes.draw do
  
  root to: "homepage#index"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'homepage/index', to: 'homepage#index', as: 'homepage' 

  get 'studentpage/index', to: 'studentpage#index', as: 'studentpage'

  get 'tutorpage/index', to: 'tutorpage#index', as: 'tutorpage'

  get 'post/list', to: 'post#list', as: 'list'
  get 'post/new', to: 'post#new', as: 'new'
  post 'post/create'
  patch 'post/update'
  get 'post/list'
  get 'post/show'
  get 'post/edit'
  get 'post/delete'
  get 'post/update'
  
end
