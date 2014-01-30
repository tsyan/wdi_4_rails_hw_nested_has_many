SharedBlog::Application.routes.draw do
  resources :articles do
	  resources :users
	end
  root to: 'user#index'
end
