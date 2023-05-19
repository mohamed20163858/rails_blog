Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#index'
  get '/users/:user_id', to: 'users#show', as: 'user'
  get '/users/:user_id/posts', to: 'posts#index', as: 'user_posts'
  get '/users/:user_id/posts/:id', to: 'posts#show', as: 'user_post'
  delete '/users/:user_id/posts/:id', to: 'posts#destroy', as: 'post'
  # Defines the root path route ("/")
  root 'users#index'
  get '/posts/new', to: 'posts#new' # use id=1 to enable only current user to create posts
  post '/posts', to: 'posts#create'
  post '/comments', to: 'comments#create'
  delete '/comments/:comment_id', to: 'comments#destroy', as: 'comment'
  post '/likes', to: 'likes#create'

  namespace :api do
    namespace :v1 do
      resources "users", only: %i[index show] do
        resources "posts", only: %i[index show new create destroy] do
          resources "comments", only: %i[index show new create destroy]
          resources "likes", only: %i[create destroy]
        end
      end
    end
  end

end
