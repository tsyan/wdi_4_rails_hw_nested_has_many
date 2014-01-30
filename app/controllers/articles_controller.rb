class ArticlesController < ApplicationController
	before_action :find_article, only: [:show, :edit, :update]
  before_action :find_user, only: [:new, :create, :edit, :update, :show]

	def index
		if params[:user_id]
			@articles = User.find(params[:user_id]).articles
		else
			@articles = Article.all.order(created_at: :desc)
		end
	end

	def new
		@article = Article.new
	end

	def create
		article = Article.new(article_params)

		if @user.articles << article
  		redirect_to user_article_path(article.user_id, article.id)
  	else
  		render :new
  	end

	end

	def show
	end

	def edit
	end

	def update
		@article.update_attributes(article_params)
		redirect_to user_article_path(@article.user_id, @article.id)
	end

	private

	def article_params
		params.require(:article).permit(:title, :body, :user_id)
	end

	def find_article
    @article = Article.find(params[:id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end

end
