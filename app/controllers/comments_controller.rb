class CommentsController < ApplicationController
	before_action :find_article, only: [:new, :create]
	before_action :find_user, only: [:new, :create]

	def new
		@comment = Comment.new
	end

	def create
		comment = Comment.new(comment_params)

		if @article.comments << comment
  		redirect_to user_article_path(@article, @user)
  	else
  		render :new
  	end
	end

	private

	def comment_params
		params.require(:comment).permit(:body, :article_id)
	end

	def find_article
		@article = Article.find(params[:article_id])
	end

	def find_user
		@user = User.find(params[:user_id])
	end
end
