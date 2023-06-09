Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/users", to: "users#index"
  get "/users/:user_id", to: "users#show", as: "user"
  get "/users/:user_id/posts", to: "posts#index", as: "user_posts"
  get "/users/:user_id/posts/:id", to: "posts#show", as: "user_post"
  # Defines the root path route ("/")
  root "users#index"
  get "/posts/new", to: "posts#new" # use id=1 to enable only current user to create posts
  post "/posts", to: "posts#create" 
  post "/comments", to:"comments#create"
  post "/likes", to:"likes#create"
end
