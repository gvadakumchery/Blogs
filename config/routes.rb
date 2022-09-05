Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index', as: 'root'


  #POSTS

  get 'post', to: 'post#new'

  post 'submit', to: 'post#create'

  get 'post', to: 'post#new'


  post 'delete_post/:id', to: 'post#delete'


  # COMMENTS

  get 'view_comment/new_comment/:id', to: 'comment#new'



  get 'new_comment/:id', to: 'comment#new'


  post 'submit_comment/:id', to: 'comment#create'


  get 'view_comment/:id', to: 'comment#index'


  #post 'delete_comment/:id', to: 'comment#delete'
  post '/view_comment/:post_id/delete_comment/:id', to: 'comment#delete'
  
end
