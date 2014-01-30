SharedBlog::Application.routes.draw do
  resources :users do
	  resources :articles
	end
  root to: 'articles#index'
end
