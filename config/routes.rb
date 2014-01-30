SharedBlog::Application.routes.draw do
  resources :users do
	  resources :articles
	end
  root to: 'user#index'
end
