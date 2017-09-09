class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)
    @comment.article = @article
    if @comment.save
      redirect_to article_path @article
    else
      render '/articles/show'
    end
  end

  def update
    @article = Article.find(params[:article_id])
    @updated_comment = @article.comments.find(params[:id])
    if @updated_comment.update(comment_params)
      redirect_to article_path(@article)
    else
      render '/articles/show'
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end










  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
