class ArticlesController < ApplicationController
	 before_action :find_article, only: [:show, :edit, :update]
  before_action :get_user, only: [:new, :create, :edit, :update]

	def index
		if params[:user_id]
			@articles = User.find(params[:user_id]).articles
		else
			@articles = Article.all
		end
	end

	def new
		@article = Article.new
	end

	def create
		@user.articles << Article.new(article_params)

		if @user.articles.save
  		redirect_to user_article_path(article.user_id, article.id)
  	else
  		render :new
  	end

  	# @user.articles << article = Article.create!(article_params)
   #  redirect_to user_article_path(article.user_id, article.id)
	end

	def show
	end

	def edit
	end

	def update
	end

	private

	def article_params
		params.require(:id).permit(:title, :body, :user_id)
	end

	def find_article
    @article = Article.find(params[:id])
  end

  def get_user
    @user = User.find(params[:user_id])
  end

end
