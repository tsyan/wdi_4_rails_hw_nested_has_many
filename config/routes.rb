SharedBlog::Application.routes.draw do
  resources :users
  root to: 'user#index'
end
